# Fetches the CLI for deal.cmd. What it fetches must match the hash pinned in
# deal.cmd, so a compromised download host cannot run anything on this machine.
# Cmdlets and tar.exe only: a managed laptop in constrained language mode refuses
# .NET classes such as GZipStream.
$ErrorActionPreference = 'Stop'
# The progress bar slows a large download many times over.
$ProgressPreference = 'SilentlyContinue'
# Windows PowerShell can default to older TLS. Constrained mode refuses this,
# and then the machine's own default has to do.
try { [Net.ServicePointManager]::SecurityProtocol = 'Tls12' } catch {}

function Refuse($message, $hint) {
  Write-Output "{`"ok`":false,`"error`":`"$message`",`"hint`":`"$hint`"}"
  exit 1
}

if ($env:CODEX_SANDBOX_NETWORK_DISABLED) {
  Refuse 'The deal CLI is not installed yet' "Run this same command again outside the sandbox, with the user's approval: the first run needs the network and writes to .deal in the home folder"
}

$exe = $env:deal_install_exe
$dir = Split-Path -Parent $exe
$releases = Split-Path -Parent $dir
$url = "$env:cloud/v1/cli/$env:sha_windows_x64.tar.gz"
$writable = 'Make the .deal folder in the home folder writable, then run the command again'

try {
  New-Item -ItemType Directory -Force -Path $dir | Out-Null
  # A run killed part way leaves its folder behind; a live one is under an hour.
  Get-ChildItem -LiteralPath $dir -Filter '.part-*' -Force -ErrorAction SilentlyContinue |
    Where-Object { $_.LastWriteTime -lt (Get-Date).AddHours(-1) } |
    Remove-Item -Recurse -Force -ErrorAction SilentlyContinue
  # Each run works alone and arrives by one move, so parallel first runs cannot
  # see a partial file.
  $part = Join-Path $dir ".part-$PID"
  New-Item -ItemType Directory -Force -Path $part | Out-Null
} catch {
  Refuse "Cannot write the deal CLI's folder" $writable
}

try {
  # Worked on by relative name: tar.exe narrows its arguments, so a home folder
  # with a letter outside the code page would not reach it whole.
  Push-Location -LiteralPath $part
  try {
    try {
      Invoke-WebRequest -UseBasicParsing -Uri $url -OutFile 'deal.tar.gz' -TimeoutSec 600 | Out-Null
    } catch {
      Refuse "Could not fetch the deal CLI from $env:cloud" 'Check the connection, or ask IT to allow that address, then run the command again'
    }
    if ((Get-FileHash -Algorithm SHA256 -LiteralPath 'deal.tar.gz').Hash -ne $env:sha_windows_x64) {
      Refuse 'The download does not match this release, so it was not run' 'Run the command again. If this repeats, tell the publisher: something changed the file on its way here'
    }
    try {
      # By full path: the current folder and any other tar must not be used.
      & (Join-Path $env:SystemRoot 'System32\tar.exe') -xzf 'deal.tar.gz' 2>$null | Out-Null
    } catch {
      Refuse 'The download could not be unpacked' 'Run the command again'
    }
    if ($LASTEXITCODE -ne 0) {
      Refuse 'The download could not be unpacked' 'Run the command again'
    }
  } finally {
    Pop-Location
  }
  try {
    # Never -Force: that deletes first, and a parallel run could be about to
    # start the file. The second to arrive fails here, harmlessly.
    Move-Item -LiteralPath (Join-Path $part 'deal.exe') -Destination $exe
  } catch {
    if (-not (Test-Path -LiteralPath $exe)) {
      Refuse "Cannot write the deal CLI's folder" $writable
    }
  }
  # Three stay: a login item can name an older one until its deal next runs.
  Get-ChildItem -LiteralPath $releases -Directory -ErrorAction SilentlyContinue |
    Sort-Object LastWriteTime -Descending |
    Select-Object -Skip 3 |
    Remove-Item -Recurse -Force -ErrorAction SilentlyContinue
} finally {
  Remove-Item -Recurse -Force -LiteralPath $part -ErrorAction SilentlyContinue
}

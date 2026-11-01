@echo off
rem bin/deal for Windows: fetches the pinned CLI once, then runs it. Git Bash
rem runs bin/deal instead; this is for PowerShell and cmd. Stdout is the CLI's
rem alone, because agents parse it. No block parentheses below: a path holding
rem one, as "Program Files (x86)" does, would end the block. Every program is
rem named in full: cmd.exe looks in the current folder first, and that folder
rem holds a seller's files.
setlocal DisableDelayedExpansion

rem Stamped by scripts/release.ts.
set "release=0.0.1-30662615"
set "cloud=https://nextdeal-cloud.elbantli.com"
set "sha_windows_x64=46230ae888a7c9c17a00000d6174a56b0dd39704bd818d1c6694c1f977a60184"

if defined release goto stamped
echo {"ok":false,"error":"This deal.cmd has no release stamped in it","hint":"Install the plugin from its marketplace"} 1>&2
exit /b 1

:stamped
rem Called by a quoted bare name, %~dp0 can be the current folder, which must
rem never supply the script below.
set "here=%~dp0"
if not exist "%here%deal.cmd" for %%I in (deal.cmd) do set "here=%%~dp$PATH:I"
if defined here goto located
echo {"ok":false,"error":"deal.cmd cannot find its own folder","hint":"Run it by its full path"} 1>&2
exit /b 1

:located
if defined DEAL_HOME (set "deal_home=%DEAL_HOME%") else set "deal_home=%USERPROFILE%\.deal"
set "exe=%deal_home%\cli\%release%\deal.exe"
if exist "%exe%" goto installed

rem Read and evaluated rather than run as a file, so a machine policy that only
rem allows signed scripts does not stop it. PSModulePath goes because PowerShell 7
rem leaves its own in it, and 5.1 then cannot load its modules. Its output reaches
rem stderr, not stdout.
set "deal_install_exe=%exe%"
set "deal_install_script=%here%deal-install.ps1"
set "PSModulePath="
"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoLogo -NoProfile -NonInteractive -Command "Get-Content -Raw -LiteralPath $env:deal_install_script | Invoke-Expression" 1>&2
if errorlevel 1 exit /b 1

:installed
rem cmd.exe parses a .cmd's arguments again, so text such as "R&D" in a record
rem would be cut at the &, and seller text could run as a command. A link beside
rem this file is found ahead of it, so `deal` and bin\deal reach the program with
rem their arguments untouched. Only the first call of a release comes through
rem here, and no batch file can protect that one.
if not exist "%here%deal.exe" mklink /H "%here%deal.exe" "%exe%" >nul 2>&1

if not defined CODEX_THREAD_ID goto run
rem Codex plugins cannot ship agents, so they go where Codex reads them.
if defined CODEX_HOME (set "agents=%CODEX_HOME%\agents") else set "agents=%USERPROFILE%\.codex\agents"
if exist "%agents%\.deal-%release%" goto run
if not exist "%agents%" mkdir "%agents%" >nul 2>&1
del /q "%agents%\deal-*.toml" "%agents%\.deal-*" >nul 2>&1
copy /y "%here%..\codex-agents\*.toml" "%agents%\" >nul 2>&1 && type nul > "%agents%\.deal-%release%"

:run
"%exe%" %*
exit /b %errorlevel%

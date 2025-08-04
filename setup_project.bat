@echo off
REM Check for installed packages needed for this github pages

REM Make sure winget is installed
powershell "Write-Host 'Checking for winget installation...' -ForegroundColor Cyan"
where winget >nul 2>nul
if %ERRORLEVEL%==0 (
    powershell -Command "Write-Host 'winget is already installed.' -ForegroundColor Green"
) else (
    powershell -Command "Write-Host 'winget is not installed. Attempting to install winget...' -ForegroundColor DarkYellow"
    powershell -Command "Start-Process ms-appinstaller:?source=https://aka.ms/getwinget -Wait"
    echo Please complete the winget installation in the opened window, then re-run this script.
    exit /b 1
)

REM Check for Ruby
powershell -Command "Write-Host 'Checking for Ruby installation...' -ForegroundColor Cyan"
where ruby >nul 2>nul
if %ERRORLEVEL%==0 (
    powershell -Command "Write-Host 'Ruby is already installed.' -ForegroundColor Green"
) else (
    powershell -Command "Write-Host 'Ruby is not installed. Installing Ruby+DevKit via winget...' -ForegroundColor Red"
    winget install --id=RubyInstallerTeam.RubyWithDevKit -e
    powershell -Command "Write-Host 'Ruby+DevKit installation complete.' -ForegroundColor Green"
)

REM Check for make
powershell -Command "Write-Host 'Checking for Make installation...' -ForegroundColor Cyan"
where make >nul 2>nul
if %ERRORLEVEL%==0 (
    powershell -Command "Write-Host 'make is already installed.' -ForegroundColor Green"
) else (
    powershell -Command "Write-Host 'make is not installed. Installing make via winget...' -ForegroundColor Red"
    winget install --id=GnuWin32.Make -e
    powershell -Command "Write-Host 'make installation complete.' -ForegroundColor Green"
)

REM Check for Node.js
powershell -Command "Write-Host 'Checking for Node.js installation...' -ForegroundColor Cyan"
where node >nul 2>nul
if %ERRORLEVEL%==0 (
    powershell -Command "Write-Host 'Node.js is already installed.' -ForegroundColor Green"
) else (
    powershell -Command "Write-Host 'Node.js is not installed. Installing Node.js via winget...' -ForegroundColor Red"
    winget install --id=OpenJS.NodeJS -e
    powershell -Command "Write-Host 'Node.js installation complete.' -ForegroundColor Green"
)

REM Executing bundle install to install dependencies
powershell -Command "Write-Host 'Running bundle install...' -ForegroundColor Cyan"
where bundle >nul 2>nul
bundle install
if %ERRORLEVEL% neq 0 (
    powershell -Command "Write-Host 'Error: bundle install failed with exit code %ERRORLEVEL%.' -ForegroundColor Red"
    exit /b %ERRORLEVEL%
)

pause

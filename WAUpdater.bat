@echo off
setlocal enabledelayedexpansion

echo Welcome to WAUpdater
echo This program updates many apps on the computer
echo Version 2025/1 by deutschich

:: Check if winget is installed
where winget >nul 2>&1
if %errorlevel% neq 0 (
    echo Winget is not installed. Please install Winget and try again.
    exit /b 1
)

echo Checking for updates...
winget update >update_log.txt 2>&1
if %errorlevel% neq 0 (
    echo Failed to check for updates. See update_log.txt for details.
    exit /b 1
)

echo If you want to install the updates, press Y and hit Enter. Press any other key to exit.
set /p userInput=Do you want to continue? [Y/N]:

if /i "!userInput!" neq "Y" (
    echo Update cancelled by user.
    exit /b 0
)

echo Updates are being installed...
winget update -r >>update_log.txt 2>&1
if %errorlevel% neq 0 (
    echo Failed to install updates. See update_log.txt for details.
    exit /b 1
)

echo Complete!
exit /b 0

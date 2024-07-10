@echo off
echo Welcome to WAUpdater
echo This program updates many apps on the computer
echo Version 2024/1 by deutschich
echo Check for updates...
winget update
echo If you want to install the updates, press any key!
pause
echo Updates are being installed...
winget update -r
echo Complete!

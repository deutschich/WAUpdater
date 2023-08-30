@echo off
echo Willkommen bei WAUpdater
echo Dieses Programm Updatet viele Apps auf dem Computer
echo Copyright (C) 2023 deutschich
echo "Suche nach Updates..."
winget update
echo "Updates werden installiert..."
winget update -r
echo "Fertig!"
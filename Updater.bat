@echo off
echo "Suche nach Updates..."
winget update
echo "Updates werden installiert..."
winget update -r
echo "Fertig!"
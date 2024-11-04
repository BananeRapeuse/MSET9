@echo off
chcp 65001 > nul
py -V > nul
if %errorlevel% NEQ 0 (
    echo Python 3 n'est pas installé.
    echo Installez Python et ré-essayez.
    echo https://www.python.org/downloads/
    echo.
    pause
    exit
)
py -3 mset9.py

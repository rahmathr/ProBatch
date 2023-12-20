@echo off
title Open App

:ulang
    :openApp
        cls
        echo.
        echo [1] Google Chrome
        echo [2] Microsoft Edge
        echo [3] Opera
        echo.
        echo [0] Return
        echo.
        set /p input="Select No > "
        if %input%==1 (
            start chrome.exe
        ) else if %input%==2 (
            start msedge.exe
        ) else if %input%==3 (
            start opera.exe
        ) else if %input%==0 (
            call main.bat
        ) else (
            goto :openApp
        )

goto :ulang

pause>nul
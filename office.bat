@echo off
title MS Office

:ulang
    :msOffice
        cls
        echo Microsoft Office
        set date=%date%
        echo %date%
        echo.
        echo [1] Word
        echo [2] Excel
        echo [3] Power Point
        echo.
        echo [0] Return
        echo.
        set /p input="Select No > "
        if %input%==1 (
            start WINWORD.EXE
        ) else if %input%==2 (
            start EXCEL.EXE
        ) else if %input%==3 (
            start POWERPNT.EXE
        ) else if %input%==0 (
            call main.bat
        ) else (
            goto :msOffice
        )
goto :ulang

pause>nul
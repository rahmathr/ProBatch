@echo off
color E
:main
    cls
    echo === THIS MY LIFE ===
    echo.
    echo 1.Productive
    echo 2.Hiburan
    echo.

    set /p pilih="Pilih No > "

    if %pilih%==1 (
        call produktiv.bat

    ) else if %pilih%==2 (
        call hiburan.bat
    ) else (
        goto :main
    )
        
pause>nul
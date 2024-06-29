@echo off

:main
    cls
    echo WELCOME ADMIN
    set date=%date%
    echo %date%
    echo.
    echo [1] Explorer
    echo [2] Browser
    echo [3] Office
    echo.

    set /p pilih="Select No > "

    if %pilih%==1 (
        call explorer.bat

    ) else if %pilih%==2 (
        call browser.bat

    ) else if %pilih%==3 (
        call office.bat

    ) else (
        goto :main
    )
    
pause>nul
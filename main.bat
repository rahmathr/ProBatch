@echo off

:main
    cls
    echo === TASK MANAGER ===
    echo.
    echo [1] File Explorer
    echo [2] Open App
    echo [3] MS Office
    echo.

    set /p pilih="Select No > "

    if %pilih%==1 (
        call file_explorer.bat

    ) else if %pilih%==2 (
        call open_app.bat

    ) else if %pilih%==3 (
        call ms_office.bat

    ) else (
        goto :main
    )
        
pause>nul
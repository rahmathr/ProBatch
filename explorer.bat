@echo off
title File Explorer

    :explorer
        cls
        echo Manage File
        set date=%date%
        echo %date%
        echo.
        echo [1] Create Folders
        echo [2] Deleting Folders
        echo [3] Create Files
        echo [4] Deleting Files
        echo [5] View Directory
        echo.
        echo [0] Return
        echo.

        set /p input="Select No > "
        echo.
        if %input%==1 (
            goto :buatFolder
        ) else if %input%==2 (
            goto :hapusFolder
        ) else if %input%==3 (
            goto :buatFile
        ) else if %input%==4 (
            goto :hapusFile
        ) else if %input%==5 (
            goto :lihatDirektori
        ) else if %input%== 0 (
            call main.bat
        ) else (
            echo Input Tidak Valid
            echo.
            pause
            goto :explorer
        )

    REM BUAT FOLDER
        :buatFolder
            set /p namaFolder="> Nama Folder : "
            md %namaFolder%
            echo.
            goto :lihatDirektori
            echo.
            
            
    REM HAPUS FOLDER
        :hapusFolder
            set /p hapusFolder="> Hapus Folder : "
            rd %hapusFolder%
            echo.
            goto :lihatDirektori
            echo.
            
            
    REM BUAT FILE
        :buatFile
            set /p namaFile="> Nama File : "
            set /p buatEkstensi="> Ekstensi File (tanpa titik) : "
            set /p isiFile="> Isi File : "
            echo %isiFile%>%namaFile%.%buatEkstensi%
            echo.
            goto :lihatDirektori
            echo.
            

    REM HAPUS FILE
        :hapusFile
            set /p hapusFile="> Hapus Nama File : "
            set /p hapusEkstensi="> Ekstensi (tanpa titik) : "
            del %hapusFile%.%hapusEkstensi%
            echo.
            goto :lihatDirektori
            echo.

    REM LIHAT DIREKTORI
        :lihatDirektori
            set /p lihatFolder="Cek? (y/t) : "
            if %lihatFolder%==y (
                dir
                echo.
                pause
                goto :explorer
            ) else if %lihatFolder%==t (
                goto :explorer
            ) else (
                goto :explorer
            )

pause>nul
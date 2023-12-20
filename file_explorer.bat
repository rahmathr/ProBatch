@echo off
title File Explorer

    :fileExplorer
        cls
        echo.
        echo [1] Create Folders
        echo [2] Deleting Folders
        echo [3] Create Files
        echo [4] Deleting Files
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
        ) else if %input%==0 (
            call main.bat
        ) else (
            goto :fileExplorer 
        )

    ::BUAT FOLDER
        :buatFolder
            set /p namaFolder="> Nama Folder : "
            md %namaFolder%
            echo.
            set /p inginBuat="> Ingin Membuat Lagi? (y/t) : "
            echo.
            if %inginBuat%==y (
                goto :buatFolder
            ) else if %inginBuat%==t (
                goto :fileExplorer
            )
            
    ::HAPUS FOLDER
        :hapusFolder
            set /p hapusFolder="> Hapus Folder : "
            rd %hapusFolder%
            echo.
            set /p inginHapus="> Ingin Menghapus Lagi? (y/t) : "
            echo.
            if %inginHapus%==y (
                goto :hapusFolder
            ) else if %inginHapus%==t (
                goto :fileExplorer
            )
            
    ::BUAT FILE
        :buatFile
            set /p namaFile="> Nama File : "
            set /p buatEkstensi="> Ekstensi File (tanpa titik) : "
            set /p isiFile="> Isi File : "
            echo %isiFile%>%namaFile%.%buatEkstensi%
            echo.
            set /p inginBuatFile="Ingin Membuat Lagi (y/t)? "
            echo.
            if %inginBuatFile%==y (
                goto :buatFile
            ) else if %inginBuatFile%==t (
                goto :fileExplorer
            )

    ::HAPUS FILE
        :hapusFile
            set /p hapusFile="> Hapus Nama File : "
            set /p hapusEkstensi="> Ekstensi (tanpa titik) : "
            del %hapusFile%.%hapusEkstensi%
            echo.
            set /p inginHapusFile="Ingin Menghapus Lagi (y/t)? "
            echo.
            if %inginHapusFile%==y (
                goto :hapusFile
            ) else if %inginHapusFile%==t (
                goto :fileExplorer
            )


pause>nul
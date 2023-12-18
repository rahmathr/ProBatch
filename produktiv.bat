@echo off
color b

:ulang

    :produktiv
        cls
        echo === Produktiv ===
        echo.
        echo [1] Membuat Folder
        echo [2] Menghapus Folder
        echo [3] Membuat File
        echo [4] Menghapus File
        echo [5] Kembali
        echo.
        echo [0] Keluar
        echo.

        set /p input="Pilih > "
        echo.
        if %input%==1 (
            goto :buat_folder
        ) else if %input%==2 (
            goto :hapus_folder
        ) else if %input%==3 (
            goto :buat_file
        ) else if %input%==4 (
            goto :hapus_file
        ) else if %input%==5 (
            call main.bat
        ) else if %input%==0 (
            Exit
        ) else (
            goto :produktiv 
        )

    ::BUAT FOLDER
        :buat_folder
            set /p nama_folder="> Nama Folder : "
            md %nama_folder%
            echo.
            set /p ingin_buat="> Ingin Membuat Lagi? (y/t) : "
            echo.
            if %ingin_buat%==y (
                goto :buat_folder
            ) else if %ingin_buat%==t (
                goto :produktiv
            )
            
    ::HAPUS FOLDER
        :hapus_folder
            set /p hapus_folder="> Hapus Folder : "
            rd %hapus_folder%
            echo.
            set /p ingin_hapus="> Ingin Menghapus Lagi? (y/t) : "
            echo.
            if %ingin_hapus%==y (
                goto :hapus_folder
            ) else if %ingin_hapus%==t (
                goto :produktiv
            )
            
    ::BUAT FILE
        :buat_file
            set /p nama_file="> Nama File : "
            set /p buat_ekstensi="> Ekstensi File (tanpa titik) : "
            set /p isi_file="> Isi File : "
            echo %isi_file%>%nama_file%.%buat_ekstensi%
            echo.
            set /p ingin_buat_file="Ingin Membuat Lagi (y/t)? "
            echo.
            if %ingin_buat_file%==y (
                goto :buat_file
            ) else if %ingin_buat_file%==t (
                goto :produktiv
            )

    ::HAPUS FILE
        :hapus_file
            set /p hapus_file="> Hapus Nama File : "
            set /p hapus_ekstensi="> Ekstensi (tanpa titik) : "
            del %hapus_file%.%hapus_ekstensi%
            echo.
            set /p ingin_hapus_file="Ingin Menghapus Lagi (y/t)? "
            echo.
            if %ingin_hapus_file%==y (
                goto :hapus_file
            ) else if %ingin_hapus_file%==t (
                goto :produktiv
            )
            
goto :ulang


pause>nul
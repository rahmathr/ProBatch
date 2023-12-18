@echo off
color A
:ulang

    :hiburan
        cls
        echo === Hiburan ===
        echo.
        echo [1] Spam Folder
        echo [2] Spam File
        echo [3] Spam Program
        echo [4] Kembali
        echo.
        echo [0] Keluar
        echo.

        set /p input="Pilih > "
        if %input%==1 (
            goto :spam_folder
        ) else if %input%==2 (
            goto :spam_file
        ) else if %input%==3 (
            goto :spam_program
        ) else if %input%==4 (
            call main.bat
        ) else if %input%==0 (
            Exit
        ) else (
            goto :hiburan
        )

        

        ::Spam Folder
        :spam_folder
            echo.
            set /p input_folder="> Jumlah Spam (100, 300, 500) : "
            if %input_folder%==100 (
                for /L %%i in (1 1 100) do (
                md %%i
                )
            ) else if %input_folder%==300 (
                for /L %%i in (1 1 300) do (
                md %%i
                )
            ) else if %input_folder%==500 (
                for /L %%i in (1 1 500) do (
                md %%i
                )
            ) else (
                goto :hiburan
            )
                
        ::Spam_File
        :spam_file
            echo.
            set /p input_file="> Jumlah Spam (100, 300, 500) : "
            set /p buat_ekstensi="Ekstensi File : "
            if %input_file%==100 (
                for /L %%i in (1 1 100) do (
                echo >%%i.%buat_ekstensi%
                )
            ) else if %input_file%==300 (
                for /L %%i in (1 1 300) do (
                echo >%%i.%buat_ekstensi%
                )
            ) else if %input_file%==500 (
                for /L %%i in (1 1 500) do (
                echo >%%i.%buat_ekstensi%
                )
            ) else (
                goto :hiburan
            ) 

        ::Spam_Program
        :spam_program
            echo.
            set /p nama_program="> Nama Program (tanpa ekstensi) : "
            set /p input_program="> Jumlah Spam (5, 10, 15) : "
            if %input_program%==5 (
                for /L %%i in (1 1 5) do (
                start %nama_program%.exe
                )
            ) else if %input_program%==10 (
                for /L %%i in (1 1 10) do (
                start %nama_program%.exe
                )
            ) else if %input_program%==15 (
                for /L %%i in (1 1 15) do (
                start %nama_program%.exe
                )
            ) else (
                goto :hiburan
            )

goto :ulang

pause>nul
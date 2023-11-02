
**@echo off**

Turn off echo command, so won't be display in the console

**setlocal enabledelayedexpansion**

Enables delayed variable expansion. Allows '!' to access value of variables within loops or blocks of code instead of the usual %

**set /p sourcePath=Enter the source folder path:**

Prompts user to enter source folder path and the input will be stored in _sourcePath_

**set /p destinationPath=Enter the destination folder path:**

Prompts user to enter source folder path and the input will be stored in _destinationPath_

**if not exist "!sourcePath!\" (
    echo Error: Source folder does not exist.
    goto :eof)**

Checks if the source folder specified by the user exist. If it doesn't exist, _Error_ message will occur. Enter _goto_ _:eof_ to exit script

**if not exist "!destinationPath!\" (
    echo Error: Destination folder does not exist.
    goto :eof)**

Checks if the destination folder specified by the user exist. If it doesn't exist, _Error_ message will occur. Enter _goto_ _:eof_ to exit script    

**robocopy "!sourcePath!" "!destinationPath!" /E**

Uses Robocopy to copy contents of cource folder to destination folder. _/E_ is use to copy all subdirectories

**if errorlevel 8 (
    echo Error: ROBOCOPY encountered errors during the copy operation.
) else (
    echo Copy operation completed successfully.)**

When Robocopy is running, checks if the exit code is 8 or higher meaning Robocopy has encounter errors. Error message will occur. If the copy was successful, it will display completed succesffuly.    

**end**

**endlocal**

The end of the script and release any resources gained by the _setlocal_ command earlier in the script
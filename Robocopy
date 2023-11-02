@echo off
:: This turns off the echo command so that only executed commands will display
setlocal enabledelayedexpansion
:: This enables a delayed variable expansion

set /p sourcePath=Enter the source folder path:
:: This sets the value for the variable "sourcePath"

set /p destinationPath=Enter the destination folder path:
:: This sets the value for "destinationPath"

if not exist "!sourcePath!\" (
	echo Error: Source folder does not exist.
	goto :eof
)
::This conditional checks if the variable "sourcePath" directory exists, if it does not exist it tells the user that the file does not exist

if not exist "!destinationPath!\" (
	echo Error: Destination folder does not exist.
	goto :eof
)
::This conditional checks if the variable "destinationPath" directory exists, if it does not exist it tells the user that the file does not exist

robocopy "!sourcePath!" "!destinationPath!" /E
:: This line executes the robocopy command, using the user input folder location variables

if errorlevel 8 (
	echo Error: ROBOCOPY encountered errors during the copy operation.
) else (
	echo Copy operation completed successfully.
)
:: This conditional checks the robocopy command to confirm that the error level for the command is below 8

:end
endlocal

::Overall this Batch file copies all files and folders (including empty folders to the destiation folder)

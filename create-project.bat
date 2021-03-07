@echo off

color a
title Create Framework Project
cls
echo.
echo Author : Deri Kurniawan
echo.
echo Date : %DATE%
echo Time : %TIME%
echo.
echo Create Framework Project
echo 1. CodeIgniter [4]
echo 2. Laravel [Latest version]
echo 3. Exit
echo.
echo.
echo Create Framework Project
echo a. Command Prompt
echo b. Get Composer
echo.
set/p "input=Choose one > ";

if %input%==1 goto :codeigniter
if %input%==2 goto :laravel
if %input%==3 goto exit

:codeigniter
cls
echo.
echo Your Choice is CodeIgniter 4
echo.
set/p "input=Where do you want to place Codeigniter4 Files? > "
set directory=%input%
cls
echo.
set/p "input=Create new name for your codeigniter framework folder > "
echo.
set folder-name=%input%
cls
echo.
echo Result Details :
echo.
echo "Directory Target : %directory%"
echo "Folder Name : %folder-name%"
echo.
set/p "input=Are you sure to create CodeIgniter 4 project? [Y/N] > "
if %input%==y (start cmd /k "cd %directory%/ && composer create-project codeigniter4/appstarter %folder-name% -v") else (exit)
if %input%==n exit

EXIT /B 0

:laravel
cls
echo.
echo Your Choice is Laravel 8
echo.
set/p "input=Where do you want to place Laravel Files? > "
set directory=%input%
cls
echo.
set/p "input=Create new name for your Laravel framework folder > "
echo.
set folder-name=%input%
cls
echo.
echo Result Details :
echo.
echo "Directory Target : %directory%"
echo "Folder Name : %folder-name%"
echo.
set/p "input=Are you sure to create Laravel project? [Y/N] > "
if %input%==y (start cmd /k "cd %directory%/ && composer create-project laravel/laravel %folder-name% -v") else (exit)
if %input%==n exit

EXIT /B 0
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
set/p "input=Your choice > ";

if %input%==1 goto :codeigniter
if %input%==2 goto :laravel
if %input%==3 goto exit

:codeigniter
cls
echo.
echo Your Choice is CodeIgniter 4
echo.
echo Where do you want to place your Codeigniter4 Files?
echo for example address : c:/xampp/htdocs
echo or example address : C:\xampp\htdocs
echo.
set/p "input= Set address > "
set directory=%input%
cls
echo.
echo Create new name for your codeigniter framework folder
echo for example : learn_ci4
echo.
echo Warning! Do not using white space!
echo.
set/p "input=Set folder name > "
echo.
set folder-name=%input%
cls
echo.
echo Result :
echo.
echo "Address Target : %directory%"
echo "Folder Name : %folder-name%"
echo.

echo if you have vs code, we will automaticly open this project files on vs code!
echo We will automaticly open your browser on http://localhost:8080
echo And We will automaticly running php spark serve
echo Are you sure to create CodeIgniter 4 project?
echo.
echo Note : if you have problem about server, try to uncomment extension=intl
echo on php.ini file from your xampp or mampp or wampp or lampp.
echo.
set/p "input= Choose [y/n] > "
if %input%==y (start cmd /k "cd %directory%/ && composer create-project codeigniter4/appstarter %folder-name% -v && cd %directory%/%folder-name% && code . && start localhost:8080 && php spark serve") else (exit)
exit
EXIT /B 0

:laravel
cls
echo.
echo Your Choice is Laravel
echo.
echo Where do you want to place your Laravel Files?
echo for example address : c:/xampp/htdocs
echo or example address : C:\xampp\htdocs
echo.
set/p "input= Set address > "
set directory=%input%
cls
echo.
echo Create new name for your Laravel framework folder
echo for example : learn_ci4
echo.
echo Warning! Do not using white space!
echo.
set/p "input=Set folder name > "
echo.
set folder-name=%input%
cls
echo.
echo Result :
echo.
echo "Address Target : %directory%"
echo "Folder Name : %folder-name%"
echo.

echo if you have vs code, we will automaticly open this project files on vs code!
echo We will automaticly open your browser on http://localhost:8080
echo And We will automaticly running php spark serve
echo Are you sure to create Laravel project?
echo.
echo Note : if you have problem about server, try to uncomment extension=intl
echo on php.ini file from your xampp or mampp or wampp or lampp.
echo.
set/p "input= Choose [y/n] > "
if %input%==y (start cmd /k "cd %directory%/ && composer create-project laravel/laravel %folder-name% -v && cd %directory%/%folder-name% && code . && start localhost:8000 && php artisan serve") else (exit)
exit
EXIT /B 0
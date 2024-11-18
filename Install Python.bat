@echo off
title Python Installer and PyInstaller Setup


set "PYTHON_URL=https://www.python.org/ftp/python/3.11.5/python-3.11.5-amd64.exe"


echo Downloading Python...
curl -o python-installer.exe %PYTHON_URL%


echo Installing Python...
python-installer.exe /quiet InstallAllUsers=1 PrependPath=1


del python-installer.exe


echo Refreshing environment variables...
setx PATH "%PATH%;C:\Python311\Scripts"


cmd /k "pip install pyinstaller && exit"


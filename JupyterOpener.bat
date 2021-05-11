@echo off
title Jupyter Lab
set direc="C:\Jupyter Lab"
IF EXIST %direc% (CALL :CON) ELSE (echo.
mkdir %direc%)
:CON
cd /d %direc%
jupyter-lab
IF ERRORLEVEL==1 (pip install jupyterlab)
IF ERRORLEVEL==1 (echo install python or conda and try
pause
EXIT) ELSE (echo.
jupyter-lab)


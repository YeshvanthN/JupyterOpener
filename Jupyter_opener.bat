@echo on
title Jupyter Lab
:Path
set /p direc="Where do you want to open "
::findstr /^[^"|^']$
IF [%direc%]==[] (set direc="Jupyter Lab"
echo creating a File named "Jupyter Lab" at %CD%)
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


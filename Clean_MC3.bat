::::::::::::::::::::
::::::::::::::::::::

@echo off
color f2

@echo on
@echo Which product line you want to clean?
@echo 1: SampleApp
@echo 2: SampleApp_EDU
@echo 3: SampleApp_Tony
@echo 4: SampleApp_Tony_EDU
@echo off

rem :begin
rem set /p option=
rem if "%option%" == "1" set ProductLine="SampleApp" else(
rem if "%option%" == "2" set ProductLine="SampleApp_EDU" else(
rem if "%option%" == "3" set ProductLine="SampleApp_Tony" else(
rem if "%option%" == "4" set ProductLine="SampleApp_Tony_EDU" else(
rem @echo on
rem @echo Please input number 1 to 4 to choose which product line you want to clean.
rem @echo off
rem goto begin
rem ))))
set /p option=
if "%option%" == "1" set ProductLine="SampleApp"
if "%option%" == "2" set ProductLine="SampleApp_EDU"
if "%option%" == "3" set ProductLine="SampleApp_Tony"
if "%option%" == "4" set ProductLine="SampleApp_Tony_EDU"


::Delete UI folder
rd /s/q C:\ProgramData\Autodesk\%ProductLine%
rd /s/q C:\ProgramData\Autodesk\MC3

::Delete UD folder
rd /s/q C:\Users\fengw\AppData\Roaming\Autodesk\%ProductLine%
rd /s/q C:\Users\fengw\AppData\Roaming\Autodesk\MC3

::Delete Registry
reg delete HKEY_CURRENT_USER\Software\Autodesk\MC3 /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Autodesk\MC3 /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Autodesk\MC3 /f
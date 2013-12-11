::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: CER RTRT Thank You Page Localization Check
:: Author: Tony-Wei Feng
:: Date: 03/19/2013
::::::::::::::::::::::::::::::::::::::::::::::::::::::

@echo off
color f2

@echo on
@echo Please choose the language which you want to check.
@echo 1: JPN
@echo 2£ºDEU
@echo 3£ºCSY
@echo 4: CHS
@echo off

:START
set /p option=
if "%option%"=="1" goto JPN else(
if "%option%"=="2" goto DEU else(
if "%option%"=="3" goto CSY else(
if "%option%"=="4" goto CHS else(

@echo on
@echo Please chose number 1 to 4 for choose different language.
@echo off
goto START
))))


:JPN
@echo off
call RTRT_TY_Check_JPN.bat
goto END

:DEU
@echo off
call RTRT_TY_Check_DEU.bat
goto END

:CSY
@echo off
call RTRT_TY_Check_CSY.bat
goto END

:CHS
@echo off
call RTRT_TY_Check_CHS.bat
goto END

:END
exit
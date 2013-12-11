@echo off
color f2

set SempleAppPath=C:\Users\fengw\Desktop\SampleAppSourceCode_5.6.0-MFC\bin\
set LocalFilePath=C:\Users\fengw\Desktop\CER_Localized_Resources_4.2.0_r4\

@echo on
@echo which Language do you want to test?
@echo 1: Localization -- CHS
@echo 2: Localization -- CHT
@echo 3: Localization -- CSY
@echo 4: Localization -- DEU
@echo 5: Localization -- ESP
@echo 6: Localization -- FRA
@echo 7: Localization -- HUN
@echo 8: Localization -- ITA
@echo 9: Localization -- JPN
@echo 10: Localization -- KOR
@echo 11: Localization -- PLK
@echo 12: Localization -- PTB
@echo 13: Localization -- RUS
@echo off

set /p option=

if "%option%" == "1" goto CHS

if "%option%" == "2" goto CHT

if "%option%" == "3" goto CSY

if "%option%" == "4" goto DEU

if "%option%" == "5" goto ESP

if "%option%" == "6" goto FRA

if "%option%" == "7" goto HUN

if "%option%" == "8" goto ITA

if "%option%" == "9" goto JPN

if "%option%" == "10" goto KOR

if "%option%" == "11" goto PLK

if "%option%" == "12" goto PTB

if "%option%" == "13" goto RUS

:CHS
xcopy %LocalFilePath%CER\CHS %SempleAppPath%CER /y
xcopy %LocalFilePath%32bit\CHS %SempleAppPath%  /y
start %SempleAppPath%SampleApp.exe
goto end

:CHT
xcopy %LocalFilePath%CER\CHT %SempleAppPath%CER /y
xcopy %LocalFilePath%32bit\CHT %SempleAppPath%  /y
start %SempleAppPath%SampleApp.exe
goto end

:CSY
xcopy %LocalFilePath%CER\CSY %SempleAppPath%CER /y
xcopy %LocalFilePath%32bit\CSY %SempleAppPath%  /y
start %SempleAppPath%SampleApp.exe
goto end

:DEU
xcopy %LocalFilePath%CER\DEU %SempleAppPath%CER /y
xcopy %LocalFilePath%32bit\DEU %SempleAppPath%  /y
start %SempleAppPath%SampleApp.exe
goto end

:ESP
xcopy %LocalFilePath%CER\ESP %SempleAppPath%CER /y
xcopy %LocalFilePath%32bit\ESP %SempleAppPath%  /y
start %SempleAppPath%SampleApp.exe
goto end

:FRA
xcopy %LocalFilePath%CER\FRA %SempleAppPath%CER /y
xcopy %LocalFilePath%32bit\FRA %SempleAppPath%  /y
start %SempleAppPath%SampleApp.exe
goto end

:HUN
xcopy %LocalFilePath%CER\HUN %SempleAppPath%CER /y
xcopy %LocalFilePath%32bit\HUN %SempleAppPath%  /y
start %SempleAppPath%SampleApp.exe
goto end

:ITA
xcopy %LocalFilePath%CER\ITA %SempleAppPath%CER /y
xcopy %LocalFilePath%32bit\ITA %SempleAppPath%  /y
start %SempleAppPath%SampleApp.exe
goto end

:JPN
xcopy %LocalFilePath%CER\JPN %SempleAppPath%CER /y
xcopy %LocalFilePath%32bit\JPN %SempleAppPath%  /y
start %SempleAppPath%SampleApp.exe
goto end

:KOR
xcopy %LocalFilePath%CER\KOR %SempleAppPath%CER /y
xcopy %LocalFilePath%32bit\KOR %SempleAppPath%  /y
start %SempleAppPath%SampleApp.exe
goto end

:PLK
xcopy %LocalFilePath%CER\PLK %SempleAppPath%CER /y
xcopy %LocalFilePath%32bit\PLK %SempleAppPath%  /y
start %SempleAppPath%SampleApp.exe
goto end

:PTB
xcopy %LocalFilePath%CER\PTB %SempleAppPath%CER /y
xcopy %LocalFilePath%32bit\PTB %SempleAppPath%  /y
start %SempleAppPath%SampleApp.exe
goto end

:RUS
xcopy %LocalFilePath%CER\RUS %SempleAppPath%CER /y
xcopy %LocalFilePath%32bit\RUS %SempleAppPath%  /y
start %SempleAppPath%SampleApp.exe
goto end

:end
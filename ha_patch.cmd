@echo off
if "%1"=="" goto :usage
if /i %2 EQU rem goto :start
if /i %2 EQU add goto :start
goto :usage

:start
if /i %1 EQU STAGE goto :group
if /i %1 EQU PROD-A goto :group
if /i %1 EQU PROD-B goto :group

echo Processing individual server: %1
for /f "tokens=1,2,3" %%i in (.\ha_patch.cfg) do if /i %1 EQU %%j echo Match found && if /i %2 EQU rem ( move /Y \\%%j\%%k \\%%j\%%k.patch 2>nul) ELSE ( move /Y \\%%j\%%k.patch \\%%j\%%k 2>nul)

goto :end

:group


echo Processing patching group: %1

for /f "tokens=1,2,3" %%i in (.\ha_patch.cfg) do (
if /i %1 EQU %%i ( 
Set /P ec=.<nul
if /i %2 EQU rem ( 
move /Y \\%%j\%%k \\%%j\%%k.patch 2>nul
) ELSE ( 
move /Y \\%%j\%%k.patch \\%%j\%%k 2>nul
)
)
)
goto :end



:usage
echo Usage ha_patch [STAGE^|PROD-A^|PROD-B^|server] [rem^|add]
echo This script removes/activates memebrs of partticualr group or individual
echo system from respectfull LB group
:end

@echo off
color f2

for /f "tokens=*" %%a in (64bit_CERs.txt) do (
copy errorreport_%%a.zip ..\64bit_CERs
del errorreport_%%a.zip
)

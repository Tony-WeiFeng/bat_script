@echo off
color f2

set DestinationPath=C:\Users\_errorreport.ADS\Desktop\1\

for /f "tokens=*" %%a in (path_name.txt) do (
copy \\erfs\ERStoreForPrd\errorreportsprd%%a.zip %DestinationPath%
)

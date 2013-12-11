for /f "tokens=*" %%a in (USSCLSECARAPP01_299_data.txt) do (
copy D:\Deploy\UsageFiles\%%a.zip C:\Users\_errorreport\Desktop\USSCLSECARAPP01_299_data\
)
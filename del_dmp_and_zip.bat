for /f "tokens=*" %%a in (del_folder_list.txt) do (
FORFILES /P "X:\%%a" /S /M *.zip /C "CMD /C del @FILE"
)

for /f "tokens=*" %%a in (del_folder_list.txt) do (
FORFILES /P "X:\%%a" /S /M *.dmp /C "CMD /C del @FILE"
)

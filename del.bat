FORFILES /P "C:\script" /S /M *.* /D 0 /C "CMD /C del @FILE"
FORFILES /P "C:\script" /D 0 /C "CMD /C if @ISDIR==TRUE RD /Q /S @FILE"
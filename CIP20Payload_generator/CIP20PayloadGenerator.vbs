Set ws = CreateObject("WScript.Shell")
Dim i
for i=1 to 500
	ws.Run "LaunchAcad.bat",0, True
	wscript.sleep 7000
	ws.Run "CloseAcad.bat",0,True
	wscript.sleep 3000
	ws.Run "bak.bat",0,True
next
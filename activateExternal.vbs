Option Explicit
Dim WshShell
Const MyProcessID = 15040
Set WshShell = WScript.CreateObject("WScript.Shell")
WshShell.AppActivate(MyProcessID)
#SingleInstance, force
#Persistent

options := "-console -game left4dead +map l4d_airport05_runway -port 27025"
exe := A_ScriptDir "\srcds.exe"

If !FileExist(exe) {
	msgbox srcds.exe not found in current directory`n`n%exe%`n`nClosing..
	exitapp
}

loop
	RunWait, % exe A_Space options, % A_ScriptDir
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode InputThenPlay  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


*v::
	Send, v
	KeyWait, v
	Send, v
return
#Requires AutoHotkey v2.0
#SingleInstance Ignore

SendMode "InputThenPlay"  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir A_InitialWorkingDir  ; Ensures a consistent starting directory.


*v::
{
	Send "v"
	KeyWait "v"
	Send "v"
}
return

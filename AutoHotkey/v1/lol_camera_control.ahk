#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


|::
	key++
    if key = 1
	    Send {Numpad7}
    else if key = 2
	    Send {Numpad6}
    else if key = 3
	    Send {Numpad0}
    else
    {
	    Send {Numpad1}
        key = 0
    }
	return
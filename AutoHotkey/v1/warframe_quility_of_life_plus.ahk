#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance force


F12::ExitApp
Pause::Suspend


<::
	Send, {RButton}

	Random, ranSleep, 244, 256
	Sleep, %ranSleep%

	Send, {LButton}

	Random, ranSleep, 1, 15
	Sleep, %ranSleep%

	Send, {RButton}
Return


; $ so the sent key does not retrigger the script
$q:: 
	While ( GetKeyState( "q","P" ) ) {
		Send, {q down}

		Random, ranSleep, 21, 56
		Sleep, %ranSleep%

		Send, {q Up}

		Random, ranSleep, 30, 82
		Sleep, %ranSleep%
	} 
Return

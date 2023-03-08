#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode InputThenPlay  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance force


F12::ExitApp  ; Exit script with Escape key
Pause::Suspend


$q:: 
	While ( GetKeyState( "q","P" ) ) {
		Send, {q down}

		Random, ranSleep, 31, 56
		Sleep, %ranSleep%

		Send, {q Up}

		Random, ranSleep, 70, 92
		Sleep, %ranSleep%
	} 
Return
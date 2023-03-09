#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode InputThenPlay  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance force


F12::ExitApp  ; Exit script with Escape key
F11::Reload
Pause::Suspend


Lbutton::			; Change this to your preferred input that triggers the macro
	Send, {RButton}

	Random, ranSleep, 317, 349
	Sleep, %ranSleep%			; Timing after first RMB press to wait before pressing the next, 1000 = 1 second

	Send, {LButton}

	Random, ranSleep, 81, 100
	Sleep, %ranSleep%			; Timing after LMB press to wait before pressing the next, 1000 = 1 second

	Send, {RButton}
Return
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

toggle := 0

SetTimer, PressKey, 100

$U::toggle := !toggle

PressKey:
	if (toggle){
		Random, var, 50, 150
		SendInput {U down}
		Sleep %var%
		Random, var, 200, 500
		SendInput {U up}
		Sleep %var%
		}
return

Esc::ExitApp
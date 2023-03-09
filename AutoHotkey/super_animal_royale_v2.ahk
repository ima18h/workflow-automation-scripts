#Requires AutoHotkey v2.0
#MaxThreadsPerHotkey 3
#SingleInstance

SendMode InputThenPlay
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


F12::ExitApp ; Exit script
NumLock::Suspend

; $ so the sent key does not retrigger the script
$c:: 
	While ( GetKeyState( "c","P" ) ) {
		Send, {c down}

		Random, ranSleep, 1, 5
		Sleep, %ranSleep%

		Send, {Space Down}

		; 399 is minimum here
		Random, ranSleep, 399, 436
		Sleep, %ranSleep%

		Send, {c Up}

		Random, ranSleep, 4, 11
		Sleep, %ranSleep%

		Send, {Space Up}
	}
Return

$v:: 
	While ( GetKeyState( "v","P" ) ) {
		Send, {v down}

		Random, ranSleep, 1, 5
		Sleep, %ranSleep%

		Send, {Space Down}

		; 399 is minimum here
		Random, ranSleep, 399, 436
		Sleep, %ranSleep%

		Send, {v Up}

		Random, ranSleep, 4, 11
		Sleep, %ranSleep%

		Send, {Space Up}
	}
Return

$b:: 
	While ( GetKeyState( "b","P" ) ) {
		Send, {b down}

		Random, ranSleep, 1, 5
		Sleep, %ranSleep%

		Send, {Space Down}

		; 399 is minimum here
		Random, ranSleep, 399, 436
		Sleep, %ranSleep%

		Send, {b Up}

		Random, ranSleep, 4, 11
		Sleep, %ranSleep%

		Send, {Space Up}
	}
Return

$Space:: 
	While ( GetKeyState( "space","P" ) ) {
		Send, {Space Down}

		Random, ranSleep, 20, 25
		Sleep, %ranSleep%

		Send, {Space Up}

		; 399 is minimum here
		Random, ranSleep, 399, 436
		Sleep, %ranSleep%
	}
Return

#Requires AutoHotkey v2.0
#MaxThreadsPerHotkey 3
#SingleInstance Ignore

SendMode "InputThenPlay"


F12::ExitApp ; Exit script
NumLock::Suspend

$c::jump_c
$v::jump_v
$Space::jump
$b::jump_b

; $ so the sent key does not retrigger the script
jump_c(){
    While(GetKeyState("c", "P")) {
		Send "{c down}"

		Sleep Random(1, 5)

		Send "{Space Down}"

		; 399 is minimum here
		Sleep Random(399, 436)

		Send "{c Up}"

		Sleep Random(4, 11)

		Send "{Space Up}"
	}
    Return
}

jump_v(){
	While(GetKeyState("v", "P")) {
		Send "{v down}"

		Sleep Random(1, 5)

		Send "{Space Down}"

		; 399 is minimum here
		Sleep Random(399, 436)

		Send "{v Up}"

		Sleep Random(4, 11)

		Send "{Space Up}"
	}
    Return
}

jump_b(){
	While (GetKeyState("b", "P")) {
		Send "{b down}"

		Sleep Random(1, 5)

		Send "{Space Down}"

		; 399 is minimum here
		Sleep Random(399, 436)

		Send "{b Up}"

		Sleep Random(4, 11)

		Send "{Space Up}"
	}
    Return
}

jump(){
	While (GetKeyState("space", "P")) {
		Send "{Space Down}"

		Sleep Random(20, 25)

		Send "{Space Up}"

		; 399 is minimum here
		Sleep Random(399, 436)
	}
    Return
}

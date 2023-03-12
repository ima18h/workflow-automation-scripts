#Requires AutoHotkey v2.0
#SingleInstance Ignore


F12::ExitApp
Pause::Suspend


; * wildcard, so it triggers even if modifiers pressed.
*q::{
	While (GetKeyState("q", "P")) {
		Send "{q down}"

		Sleep Random(31, 56)

		Send "{q up}"

		Sleep Random(70, 92)
	}
    Return
}

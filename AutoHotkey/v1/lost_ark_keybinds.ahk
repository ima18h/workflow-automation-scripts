#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

#MaxThreadsPerHotkey 3
#SingleInstance

F12::ExitApp
NumLock::Suspend




;WheelUp::SendInput, {Space}

;RButton::b

g::0
h::+
Numpad6::g
;Numpad3::h if other interact useful
;<!s::9 fynke faen ikke homo drid

;h::
Send, {MButton down}

    Random, ranSleep, 3000, 4600
    Sleep, %ranSleep%

    Send, {MButton Up}
Return


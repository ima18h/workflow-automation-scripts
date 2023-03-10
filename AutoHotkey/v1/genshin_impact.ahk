#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

#MaxThreadsPerHotkey 3
#SingleInstance

F12::ExitApp
NumLock::Suspend


$r::
while GetKeyState("r","P")
{
    Send, {r down}

    Random, ranSleep, 41, 76
    Sleep, %ranSleep%

    Send, {r Up}

    Random, ranSleep, 50, 72
    Sleep, %ranSleep%
}
return

$<::
Toggle := !Toggle
loop{
    If not Toggle
        break
    Send, {LButton down}

    Random, ranSleep, 51, 76
    Sleep, %ranSleep%

    Send, {LButton Up}

    Random, ranSleep, 130, 202
    Sleep, %ranSleep%
    }
return

$5::
Toggle := !Toggle
loop{
    If not Toggle
        break
    Send, {r down}

    Random, ranSleep, 131, 366
    Sleep, %ranSleep%

    Send, {r Up}

    Random, ranSleep, 140, 362
    Sleep, %ranSleep%
    }
return

;WheelUp::SendInput, {Space}

;RButton::b

;NumpadMult::y

;h::
Send, {MButton down}

    Random, ranSleep, 3000, 4600
    Sleep, %ranSleep%

    Send, {MButton Up}
Return

Numpad7::
KeyDown := !KeyDown
If KeyDown
    SendInput {w down}
Else
    SendInput {w up}
Return

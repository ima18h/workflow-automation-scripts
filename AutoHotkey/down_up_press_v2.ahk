﻿#Requires AutoHotkey v2.0
#SingleInstance Ignore
SendMode "InputThenPlay"  ; Recommended for new scripts due to its superior speed and reliability.


;* makes it trigger even if modifiers are pressed
*v::
{
	Send "v"
	KeyWait "v"
	Send "v"
}
return

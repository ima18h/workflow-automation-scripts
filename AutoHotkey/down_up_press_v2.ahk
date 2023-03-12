#Requires AutoHotkey v2.0
#SingleInstance Ignore


;* makes it trigger even if modifiers are pressed
*v::
{
	Send "v"
	KeyWait "v"
	Send "v"
}
return

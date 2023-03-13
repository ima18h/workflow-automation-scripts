#Requires AutoHotkey v2.0

#Include "chrome_cast_uncast_shortcut.ahk"


+PgUp::load()


;TODO: add the other scripts and test
load(){
    if WinExist(ahk_exe FortniteClient-Win64-Shipping.exe)
        #Include "down_up_press_v2.ahk.ahk"
}

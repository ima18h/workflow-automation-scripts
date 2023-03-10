#Requires AutoHotkey v2.0
SetWorkingDir A_InitialWorkingDir  ; Ensures a consistent starting directory.


; Script to start/stop casting screen to Chromecast
+Home::start
+End::stop
+Insert::playPuaseYT


delay_1 := 128, delay_2 := 256, delay_3 := 512, delay_4 := 1024, delay_5 := 2048, delay_6 := 4096, delay_7 := 8192

start(){
    global chromeWin := WinExist(chromeWin)
    if chromeWin = 0{
        global chromeWin := WinExist("ahk_exe chrome.exe")
        if chromeWin = 0{
            Run "chrome"
            Sleep delay_4
            global chromeWin := WinExist("ahk_exe chrome.exe")
            activateChromeYT(true)
        }
        else
            activateChromeYT(true)
    }
    else
        activateChromeYT

    Send "!f"
    Sleep delay_1
    Send "c"
    Sleep delay_1
    Send "`t"
    Send "`t"
    Send "`t"
    Send "`t"
    Send "`n"
    Sleep delay_1
    Send "{Down}"
    Send "{Down}"
    Send "`n"
    Sleep delay_1
    Send "`t"
    Send "`t"
    Send "`n"
    Sleep delay_1
    Send "{esc}"
    Sleep delay_1
    Send "f"
}

stop(){
    activateChromeYT

    Send "!f"
    Sleep delay_1
    Send "c"
    Sleep delay_1
    Send "`t"
    Send "`t"
    Send "`n"
    Sleep delay_1
    Send "{esc}"
    Sleep delay_1
    Send "^9"
    Sleep delay_1
    Send "#d"
}

startup(){
    global chromeWin := WinWait("ahk_exe chrome.exe")
    Sleep delay_4
    activateChromeYT(true)
    Send "k"
    start
}

activateChromeYT(startup := false){
    if startup{
        if WinActive(chromeWin){
            Send "^1"
            Sleep delay_5
            Send "^r"
            Sleep delay_7
        }
        else{
            WinActivate(chromeWin)
            Sleep delay_1
            Send "^1"
            Sleep delay_5
            Send "^r"
            Sleep delay_7
        }
    }
    else
        if WinActive(chromeWin){
            Send "^1"
            Sleep delay_1
            Send "k"
            Sleep delay_1
            Send "{esc}"
            Sleep delay_4
        }
        else{
            WinActivate(chromeWin)
            Sleep delay_2
            Send "^1"
            Sleep delay_1
            Send "k"
            Sleep delay_1
            Send "{esc}"
            Sleep delay_4
        }
}

playPuaseYT(){
    if WinActive(chromeWin){
        activateChromeYT
        Send "^9"
    }
    else{
        activateChromeYT
        Send "!{tab}"
    }
    
}

startup

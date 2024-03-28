#Requires AutoHotkey v2.0
#SingleInstance Force

;[Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 12:19:42  on 25/3/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}
;this file desighned for cw learing but added to normal progeramming section becouse is usefull to me


masterHock := InputHook(), masterHock.KeyOpt('{All}', 'E')



cclp(str, cursorMove? , sendMode:=0 , sleepBeforeCursorMove := 0){
    switch sendMode {
        case 0:
            SendInput(str)
        case 1:
            A_Clipboard := str
            SendInput '^v'
        case "clip":
            A_Clipboard := str
            SendInput '^v'
        case "Clip" :
            A_Clipboard := str
            SendInput '^v'
        default:
            SendInput(str)
    }

    if IsSet(cursorMove?) {
        Sleep(sleepBeforeCursorMove)
        SendInput(cursorMove)
    }
}



::cw::{
    cclp("Console.WriteLine(`"`");","{left 3}", "clip" , 50)
    masterLoop:= 1

    while masterLoop ==1 {
        masterHock.Start()
        masterHock.Wait()
            switch masterHock.EndKey {
                case "Backspace": 
                    KeyWait("Backspace" , "L")
                    SendInput "{Delete}"
                    masterLoop := 0
                case "Delete":
                    KeyWait("Delete" , "L")
                    SendInput "{BackSpace}"
                    masterLoop := 0
                default:
                    ; SoundBeep
                    ; A_Clipboard := masterHock.EndKey
                    SendInput('{' masterHock.EndKey '}')
                
            
            }
        
}
}

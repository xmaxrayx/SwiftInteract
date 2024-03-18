#Requires AutoHotkey v2.0
;[Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 23:06:32  on 17/3/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}


cclp(str,move? ,mode:=0 ,slp := 0){
    switch mode {
        case 0:
            SendInput(str)
        case 1:
            A_Clipboard := str
            SendInput '^v'
        default:       
    }

    if IsSet(move?) {
        Sleep(slp)
        SendInput(move)
    }
}



::/s::{
    cclp("string  = `;","{left 4}", 1,50,)

    ;string = ;
    ;string = ;
}



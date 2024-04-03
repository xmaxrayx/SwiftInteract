#Requires AutoHotkey v2.0
#SingleInstance Force

;[Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 23:06:32  on 17/3/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}

;masterHock := InputHook() ;, masterHock.KeyOpt('{All}', 'E')



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



varabileManger(typeName?){
    masterHock := InputHook()
    masterLoop:= 1
        while masterLoop ==1 {
        masterHock.Start()
        masterHock.Wait()
        
            switch masterHock.EndKey {
                case "Space":
                    SendInput "{Right 3}"
                    masterLoop := 0
                default:
                    SendInput('{' masterHock.EndKey '}')
                
            
            }
        
    }

}


varabileMangerv2(typeName?){

    masterHock := InputHook()

    masterLoop:= 1
        while masterLoop ==1 {
            masterHock.KeyOpt("{All}", "E")  
            masterHock.KeyOpt("{LCtrl}{RCtrl}{LAlt}{RAlt}{LShift}{RShift}{LWin}{RWin}", "-E")
            masterHock.Start()
            masterHock.Wait()
        
            switch masterHock.EndKey {
                case "Space":
                    SendInput "{Right 3}"
                    masterLoop := 0
                default:
                    ;MsgBox ('{' masterHock.EndMods . masterHock.EndKey '}')
                    ;m := EndmodsTranslator(masterHock.EndMods, masterHock.EndKey)
                    SendInput(EndmodsTranslator(masterHock.EndMods, masterHock.EndKey))
                    ;SendInput(m)
                    ;SendInput('{' masterHock.EndMods . masterHock.EndKey '}')
                
            
            }
        
    }

}
;string :::>><;;;<<>>:::: =  ;
;string ;string  =  ;  ;/s s / string  =  ; ;string  =  ; ;string >><>>> = string ><:::::: =  ; ;  string >:::> =  ; ;string LL:::;<<>>..:::;; =  ;

EndmodsTranslator(endMods := "" ,key := ""){ 
;/by xmaxrayx [Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 12:48:51  on 26/3/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}
local start_endmods := ""
local end_endmods := ""

key := ("{" . key . "}")

if 0 != RegExMatch(endMods ,">") {
    ;MsgBox ("found 1 " . endMods)

    endMods := RegExReplace(endMods ,">","")
    ;MsgBox endMods
    if 0 != RegExMatch(endMods ,"!") {
    ;endMods := RegExReplace(endMods ,"!","{LALT}")
    
    start_endmods .= "{LALT Down}"
    end_endmods .= "{LALT Up}"
    }

    if 0 != RegExMatch(endMods ,"\^") {
    endMods := RegExReplace(endMods ,"\^","{LCtrl}")

    start_endmods .= "{LCtrl Down}"
    end_endmods .= "{LCtrl Up}"

    }
    
    if 0 != RegExMatch(endMods ,"@") {
    endMods := RegExReplace(endMods ,"@","{LWin}")
    

    start_endmods .= "{LWin Down}"
    end_endmods .= "{LWin Up}"
    

    }
    
    if 0 != RegExMatch(endMods ,"\+") {
    endMods := RegExReplace(endMods ,"\+","{LShift}")
    
    start_endmods .= "{LShift Down}"
    end_endmods .= "{LShift Up}"
    

    }

    return(start_endmods . key . end_endmods)

}
else if 0 =!RegExMatch(endMods ,"<") {
    ;MsgBox (2 . endMods)


    endMods := RegExReplace(endMods ,"<","")
    ;MsgBox endMods
    if 0 != RegExMatch(endMods ,"!") {
    endMods := RegExReplace(endMods ,"!","{RALT}")

    start_endmods .= "{RALT Down}"
    end_endmods .= "{RALT Up}"


    }

    if 0 != RegExMatch(endMods ,"\^") {
    endMods := RegExReplace(endMods ,"\^","{RCtrl}")


    start_endmods .= "{RCtrl Down}"
    end_endmods .= "{RCtrl Up}"

    }
    
    if 0 != RegExMatch(endMods ,"@") {
    endMods := RegExReplace(endMods ,"@","{RWin}")


    start_endmods .= "{RWin Down}"
    end_endmods .= "{RWin Up}"

    }
    
    if 0 != RegExMatch(endMods ,"\+") {
    endMods := RegExReplace(endMods ,"\+","{RShift}")


    start_endmods .= "{RShift Down}"
    end_endmods .= "{RShift Up}"


    }

    return(start_endmods . key . end_endmods)








}
else {
    return(key)
}




; switch RegExMatch(">" ,endMods) {
;     case 1 : 0 != RegExMatch(">" ,endMods)
;         MsgBox (1 . endMods)
;     case 2 : 0!=RegExMatch("<" ,endMods)
;         MsgBox (2 . endMods)    
    
;     default:
;         MsgBox (3 . endMods)
; }




;return endMods  =  ;


}





;/ s/s string  =  ; ;s/ string ;;;';    ' =  ; string ;; = ;string  =  ; ; ;string ;;; =  ; string ; =  ; string  = ;string  =  ; ; ;string  =: ; ;string  =  ; ;string  =  ; ;.> /string  =  ;



::str::
::string::
::/s::{
    cclp("string  =  `;","{left 5}", "clip" , 50)
    varabileMangerv2()
}



::int::
::/i::{
cclp("int  =  `;","{left 5}", "clip" , 50)
varabileManger()
}



::if::{

    ;if statement engine v1.0
    ;[Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 11:33:52  on 30/3/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}


    ifStatementFirstWord := "if ()"
    ifFirstMovement := "{left 1}"
    ifSecondMovement := "{Right 1}"







    masterLoop:= 1
    cclp(ifStatementFirstWord,ifFirstMovement, "clip" , 50)
    masterHock := InputHook()

    
        while masterLoop ==1 {
            masterHock.KeyOpt("{All}", "E")  
            masterHock.KeyOpt("{LCtrl}{RCtrl}{LAlt}{RAlt}{LShift}{RShift}{LWin}{RWin}", "-E")
            masterHock.Start()
            masterHock.Wait()

        switch masterHock.EndKey {
            case "Space":
                KeyWait("space", "L")
                SendInput ifSecondMovement

                SendInput "{{}"
                SendInput "{`n}"
                SendInput "{Right 1}"
                SendInput "{`n}"
                SendInput "{}}"
                masterLoop := 1
            default:
                SendInput(EndmodsTranslator(masterHock.EndMods, masterHock.EndKey))
            
        
        }
    
}
}

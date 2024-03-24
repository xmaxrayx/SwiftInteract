#Requires AutoHotkey v2.0
;[Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 23:06:32  on 17/3/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}

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



varabileManger(typeName?){

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








::/s::{
    masterLoop := 1
    
    cclp("string  =  `;","{left 5}", "clip" , 50)
    
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

::/i::{
cclp("int  =  `;","{left 5}", "clip" , 50)
varabileManger()
}







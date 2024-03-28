#Requires AutoHotkey v2.0
#SingleInstance Force


;[Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 12:12:24  on 26/3/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}
;test fo combbo print



; MsgBox KeyWaitCombo()

KeyWaitCombo(Options:="")
{
    ih := InputHook(Options)
    if !InStr(Options, "V")
        ih.VisibleNonText := false
    ih.KeyOpt("{All}", "E")  ; End
    ; Exclude the modifiers
    ih.KeyOpt("{LCtrl}{RCtrl}{LAlt}{RAlt}{LShift}{RShift}{LWin}{RWin}", "-E")
    ih.Start()
    ih.Wait()
    return ih.EndMods . ih.EndKey  ; Return a string like <^<+Esc
}

;.....> > > > > > 
SendInput("{LShift Down}{.}{Shift up}")



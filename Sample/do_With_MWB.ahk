
; isSuspended := False

SetTimer, MouseWithoutBordersChecker, 200

MouseWithoutBordersChecker:
MouseGetPos, Mx, My
If (Mx = 3)
{
        ; Suspend, On
    If (!isSuspended){
        isSuspended := True
        Suspend, On
        MsgBox, , , do_with_MHB is suspended, 0.5
    }
    
}
Else
{
        ; Suspend, Off
    If (isSuspended){
        isSuspended := False
        Suspend, Off
        MsgBox, , , do_with_MHB is resumed, 0.5
    }
}
Return

Esc::
MsgBox, do_with_MHB is runninng
Return
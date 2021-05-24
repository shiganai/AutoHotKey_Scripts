Run, AHK_OnlyNumPad.ahk, , , AHK_OnlyNumPad_PID
Return

Insert::
Process, Exist, %AHK_OnlyNumPad_PID%
; MsgBox %ErrorLevel%
If( ErrorLevel != 0 )
{
  Process, Close, %AHK_OnlyNumPad_PID%
  Return
}
Else
{
  Run, AHK_OnlyNumPad.ahk, , , AHK_OnlyNumPad_PID
  Return
}
Return
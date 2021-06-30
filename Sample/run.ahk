Run, run_Target.ahk, , , run_Target
Return

Insert::
Process, Exist, %run_Target%
; MsgBox %ErrorLevel%
If( ErrorLevel != 0 )
{
  Process, Close, %run_Target%
  Return
}
Else
{
  Run, run_Target.ahk, , , run_Target
  Return
}
Return 
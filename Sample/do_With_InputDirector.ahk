#InstallKeybdHook

SetTimer, InputDirectorChecker, 200

InputDirectorChecker:

SysGet, MonitorCount, MonitorCount
SysGet, MonitorPrimary, MonitorPrimary
SysGet, Monitor, Monitor, 1
Mx_Min := MonitorLeft
Mx_Max := MonitorRight
Loop, %MonitorCount%
{
  SysGet, Monitor, Monitor, %A_Index%
    If (Mx_Min >= MonitorLeft){
        Mx_Min := MonitorLeft
    }
    Else{
        If (Mx_Max <= MonitorRight){
            Mx_Max := MonitorRight
        }
    }
}
CoordMode,Mouse,Screen
MouseGetPos, Mx, My
If (Mx > Mx_Min && Mx < Mx_Max - 1)
{
        ; Suspend, Off
    If (isSuspended){
        isSuspended := False
        Suspend, Off
        MsgBox, , , do_with_MHB is resumed, 0.5
    }
    
}
Else
{
        ; Suspend, On
    If (!isSuspended){
        isSuspended := True
        Suspend, On
        MsgBox, , , do_with_MHB is suspended, 0.5
    }
}
Return

Esc::
SysGet, MonitorCount, MonitorCount
SysGet, MonitorPrimary, MonitorPrimary
MsgBox, Monitor Count:`t%MonitorCount%`nPrimary Monitor:`t%MonitorPrimary%
SysGet, Monitor, Monitor, 1
Mx_Min := MonitorLeft
Mx_Max := MonitorRight
Loop, %MonitorCount%
{
  SysGet, Monitor, Monitor, %A_Index%
    If (Mx_Min >= MonitorLeft){
        Mx_Min := MonitorLeft
    }
    Else{
        If (Mx_Max <= MonitorRight){
            Mx_Max := MonitorRight
        }
    }
}
MsgBox, Mx_Min =  %Mx_Min%`n Mx_Max = %Mx_Max%

CoordMode,Mouse,Screen
MouseGetPos, Mx, My
MsgBox, Mx =  %Mx%`nMy = %My%
Return
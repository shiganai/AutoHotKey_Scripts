
SetTimer, MouseWithoutBordersChecker, 200

MouseWithoutBordersChecker:
MouseGetPos, Mx, My
If (Mx = 3)
{
    Suspend, On
}
Else
{
    Suspend, Off
}
Return
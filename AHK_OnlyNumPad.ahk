SetKeyDelay, 0

; 1::!
; 2::"
; 3::#
; 4::$
; 5::Send, `%
; 6::&
; 7::'
; 8::(
; 9::)
; 0::=

Trigger = on

Insert::
If (Trigger == "on")
{
    Trigger = off
    Return
}
Else
{
    Trigger = on
    Return
}
Return

SetNumlockState, AlwaysOn

; 1::
; If (Trigger == "off")
; {
;     Send, 1
;     Return
; }
; Else
; {
;     1::!
;     Return
; }
; Return

; 2::
; If (Trigger == "off")
; {
;     Send, 2
;     Return
; }
; Else
; {
;     2::"
;     Return
; }
; Return

; 3::
; If (Trigger == "off")
; {
;     Send, 3
;     Return
; }
; Else
; {
;     3::#
;     Return
; }
; Return

; 4::
; If (Trigger == "off")
; {
;     Send, 4
;     Return
; }
; Else
; {
;     4::$
;     Return
; }
; Return

; 5::
; If (Trigger == "off")
; {
;     5::5
;     Return
; }
; Else
; {
;     Send, `%
;     Return
; }
; Return

; 6::
; If (Trigger == "off")
; {
;     Send, 6
;     Return
; }
; Else
; {
;     6::&
;     Return
; }
; Return

7::
If (Trigger == "off")
{
    Send, 7
    Return
}
Else
{
    7::'
    Return
}
Return

8::
If (Trigger == "off")
{
    Send, 8
    Return
}
Else
{
    8::(
    Return
}
Return

9::
If (Trigger == "off")
{
    Send, 9
    Return
}
Else
{
    9::)
    Return
}
Return

; 0::
; If (Trigger == "off")
; {
;     Send, 0
;     Return
; }
; Else
; {
;     0::=
;     Return
; }
; Return

@::
If (Trigger == "off")
{
    Send, @
    Return
}
Else
{
    @::=
    +@::`
    Return
}
Return
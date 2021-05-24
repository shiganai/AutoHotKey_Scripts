SetKeyDelay, 0
Numpad_Trigger = on
Underbar_Trigger = off
SetNumlockState, AlwaysOn

B_PriorHotKey = *sc079 up
B_PriorKey = 

; vkE2::_
; sc073::_
sc03A::\
sc079::_
sc070::Return

;------------------------------------------------------------------
;Spaceを押したとき

$*Space::
if (isSpaceRepeat == true)      ;キーリピートしているかどうか
{
if (A_PriorKey != "Space")      ;Space長押し中の他キー押し下げを検出
{
  KeyWait, Space
  Send {Blind}{ShiftUp}       ;Shiftをリリース
  isSpaceRepeat := false
  Return
}
else Return
}
Send {Blind}{ShiftDown}     ;Shiftを押し下げ
isSpaceRepeat := true
Return

;Spaceを離したとき
$*Space up::
Send {Blind}{ShiftUp}       ;Shiftをリリース
isSpaceRepeat := false
if (A_PriorKey == "Space"){     ;Space単押しを検出
Send {Blind}{Space}     ;Spaceを入力
}
Return 


;------------------------------------------------------------------

; ~Space & sc027::Send, {+} ;割り当てるキー

; sc027::
; If (A_PriorKey == "Space"){
; Send, {+}
; Return
; }
; Else{
; sc027::`;
; Return
; }
; Return

; ~Space & sc028::Send, {*} ;割り当てるキー

; sc028::
; If (A_PriorKey == "Space"){
; Send, {*}
; Return
; }
; Else{
; sc028:::
; Return
; }
; Return

; ~Space & sc027::
; IfWinActive ahk_exe C:\Users\5950x\AppData\Local\Programs\Microsoft VS Code\Code.exe ;VSCodeでのみ発動するというコマンド
; {
; Send, {+} ;割り当てるキー
; }
; Return

; ~Space & sc028::
; IfWinActive ahk_exe C:\Users\5950x\AppData\Local\Programs\Microsoft VS Code\Code.exe ;VSCodeでのみ発動するというコマンド
; {
; Send, {*} ;割り当てるキー
; }
; Return

;------------------------------------------------------------------

; Esc::
; MsgBox %A_PriorHotKey%, %A_PriorKey%
; Return


NumLock::
If (Underbar_Trigger == "on")
{
    Underbar_Trigger = off
    Return
}
Else
{
    Underbar_Trigger = on
    Return
}
Return

sc07B::Return,

a::
If (A_PriorHotKey = "*sc079 up" && A_PriorKey = B_PriorKey && Underbar_Trigger == "on")
{
Send, A
Return
}
Else
{
a::a
Return
}
Return

b::
If (A_PriorHotKey = B_PriorHotKey && A_PriorKey = B_PriorKey && Underbar_Trigger == "on")
{
Send, B
Return
}
Else
{
b::b
Return
}
Return

c::
If (A_PriorHotKey = B_PriorHotKey && A_PriorKey = B_PriorKey && Underbar_Trigger == "on")
{
Send, C
Return
}
Else
{
c::c
Return
}
Return

d::
If (A_PriorHotKey = B_PriorHotKey && A_PriorKey = B_PriorKey && Underbar_Trigger == "on")
{
Send, D
Return
}
Else
{
d::d
Return
}
Return

e::
If (A_PriorHotKey = B_PriorHotKey && A_PriorKey = B_PriorKey && Underbar_Trigger == "on")
{
Send, E
Return
}
Else
{
e::e
Return
}
Return

f::
If (A_PriorHotKey = B_PriorHotKey && A_PriorKey = B_PriorKey && Underbar_Trigger == "on")
{
Send, F
Return
}
Else
{
f::f
Return
}
Return

g::
If (A_PriorHotKey = B_PriorHotKey && A_PriorKey = B_PriorKey && Underbar_Trigger == "on")
{
Send, G
Return
}
Else
{
g::g
Return
}
Return

h::
If (A_PriorHotKey = B_PriorHotKey && A_PriorKey = B_PriorKey && Underbar_Trigger == "on")
{
Send, H
Return
}
Else
{
h::h
Return
}
Return

i::
If (A_PriorHotKey = B_PriorHotKey && A_PriorKey = B_PriorKey && Underbar_Trigger == "on")
{
Send, I
Return
}
Else
{
i::i
Return
}
Return

j::
If (A_PriorHotKey = B_PriorHotKey && A_PriorKey = B_PriorKey && Underbar_Trigger == "on")
{
Send, J
Return
}
Else
{
j::j
Return
}
Return

k::
If (A_PriorHotKey = B_PriorHotKey && A_PriorKey = B_PriorKey && Underbar_Trigger == "on")
{
Send, K
Return
}
Else
{
k::k
Return
}
Return

l::
If (A_PriorHotKey = B_PriorHotKey && A_PriorKey = B_PriorKey && Underbar_Trigger == "on")
{
Send, L
Return
}
Else
{
l::l
Return
}
Return

m::
If (A_PriorHotKey = B_PriorHotKey && A_PriorKey = B_PriorKey && Underbar_Trigger == "on")
{
Send, M
Return
}
Else
{
m::m
Return
}
Return

n::
If (A_PriorHotKey = B_PriorHotKey && A_PriorKey = B_PriorKey && Underbar_Trigger == "on")
{
Send, N
Return
}
Else
{
n::n
Return
}
Return

o::
If (A_PriorHotKey = B_PriorHotKey && A_PriorKey = B_PriorKey && Underbar_Trigger == "on")
{
Send, O
Return
}
Else
{
o::o
Return
}
Return

p::
If (A_PriorHotKey = B_PriorHotKey && A_PriorKey = B_PriorKey && Underbar_Trigger == "on")
{
Send, P
Return
}
Else
{
p::p
Return
}
Return

q::
If (A_PriorHotKey = B_PriorHotKey && A_PriorKey = B_PriorKey && Underbar_Trigger == "on")
{
Send, Q
Return
}
Else
{
q::q
Return
}
Return

r::
If (A_PriorHotKey = B_PriorHotKey && A_PriorKey = B_PriorKey && Underbar_Trigger == "on")
{
Send, R
Return
}
Else
{
r::r
Return
}
Return

s::
If (A_PriorHotKey = B_PriorHotKey && A_PriorKey = B_PriorKey && Underbar_Trigger == "on")
{
Send, S
Return
}
Else
{
s::s
Return
}
Return

t::
If (A_PriorHotKey = B_PriorHotKey && A_PriorKey = B_PriorKey && Underbar_Trigger == "on")
{
Send, T
Return
}
Else
{
t::t
Return
}
Return

u::
If (A_PriorHotKey = B_PriorHotKey && A_PriorKey = B_PriorKey && Underbar_Trigger == "on")
{
Send, U
Return
}
Else
{
u::u
Return
}
Return

v::
If (A_PriorHotKey = B_PriorHotKey && A_PriorKey = B_PriorKey && Underbar_Trigger == "on")
{
Send, V
Return
}
Else
{
v::v
Return
}
Return

w::
If (A_PriorHotKey = B_PriorHotKey && A_PriorKey = B_PriorKey && Underbar_Trigger == "on")
{
Send, W
Return
}
Else
{
w::w
Return
}
Return

x::
If (A_PriorHotKey = B_PriorHotKey && A_PriorKey = B_PriorKey && Underbar_Trigger == "on")
{
Send, X
Return
}
Else
{
x::x
Return
}
Return

y::
If (A_PriorHotKey = B_PriorHotKey && A_PriorKey = B_PriorKey && Underbar_Trigger == "on")
{
Send, Y
Return
}
Else
{
y::y
Return
}
Return

z::
If (A_PriorHotKey = B_PriorHotKey && A_PriorKey = B_PriorKey && Underbar_Trigger == "on")
{
Send, Z
Return
}
Else
{
z::z
Return
}
Return

~sc079 & a::
If (Underbar_Trigger == "on")
{
    Send, {A}
}
Else
{
    Send, {a}
}
Return

~sc079 & b::
If (Underbar_Trigger == "on")
{
    Send, {B}
}
Else
{
    Send, {b}
}
Return

~sc079 & c::
If (Underbar_Trigger == "on")
{
    Send, {C}
}
Else
{
    Send, {c}
}
Return

~sc079 & d::
If (Underbar_Trigger == "on")
{
    Send, {D}
}
Else
{
    Send, {d}
}
Return

~sc079 & e::
If (Underbar_Trigger == "on")
{
    Send, {E}
}
Else
{
    Send, {e}
}
Return

~sc079 & f::
If (Underbar_Trigger == "on")
{
    Send, {F}
}
Else
{
    Send, {f}
}
Return

~sc079 & g::
If (Underbar_Trigger == "on")
{
    Send, {G}
}
Else
{
    Send, {g}
}
Return

~sc079 & h::
If (Underbar_Trigger == "on")
{
    Send, {H}
}
Else
{
    Send, {h}
}
Return

~sc079 & i::
If (Underbar_Trigger == "on")
{
    Send, {I}
}
Else
{
    Send, {i}
}
Return

~sc079 & j::
If (Underbar_Trigger == "on")
{
    Send, {J}
}
Else
{
    Send, {j}
}
Return

~sc079 & k::
If (Underbar_Trigger == "on")
{
    Send, {K}
}
Else
{
    Send, {k}
}
Return

~sc079 & l::
If (Underbar_Trigger == "on")
{
    Send, {L}
}
Else
{
    Send, {l}
}
Return

~sc079 & m::
If (Underbar_Trigger == "on")
{
    Send, {M}
}
Else
{
    Send, {m}
}
Return

~sc079 & n::
If (Underbar_Trigger == "on")
{
    Send, {N}
}
Else
{
    Send, {n}
}
Return

~sc079 & o::
If (Underbar_Trigger == "on")
{
    Send, {O}
}
Else
{
    Send, {o}
}
Return

~sc079 & p::
If (Underbar_Trigger == "on")
{
    Send, {P}
}
Else
{
    Send, {p}
}
Return

~sc079 & q::
If (Underbar_Trigger == "on")
{
    Send, {Q}
}
Else
{
    Send, {q}
}
Return

~sc079 & r::
If (Underbar_Trigger == "on")
{
    Send, {R}
}
Else
{
    Send, {r}
}
Return

~sc079 & s::
If (Underbar_Trigger == "on")
{
    Send, {S}
}
Else
{
    Send, {s}
}
Return

~sc079 & t::
If (Underbar_Trigger == "on")
{
    Send, {T}
}
Else
{
    Send, {t}
}
Return

~sc079 & u::
If (Underbar_Trigger == "on")
{
    Send, {U}
}
Else
{
    Send, {u}
}
Return

~sc079 & v::
If (Underbar_Trigger == "on")
{
    Send, {V}
}
Else
{
    Send, {v}
}
Return

~sc079 & w::
If (Underbar_Trigger == "on")
{
    Send, {W}
}
Else
{
    Send, {w}
}
Return

~sc079 & x::
If (Underbar_Trigger == "on")
{
    Send, {X}
}
Else
{
    Send, {x}
}
Return

~sc079 & y::
If (Underbar_Trigger == "on")
{
    Send, {Y}
}
Else
{
    Send, {y}
}
Return

~sc079 & z::
If (Underbar_Trigger == "on")
{
    Send, {Z}
}
Else
{
    Send, {z}
}
Return

Insert::
If (Numpad_Trigger == "on")
{
    Numpad_Trigger = off
    Return
}
Else
{
    Numpad_Trigger = on
    Return
}
Return

; 1::
; If (Numpad_Trigger == "off")
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
; If (Numpad_Trigger == "off")
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
; If (Numpad_Trigger == "off")
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
; If (Numpad_Trigger == "off")
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
; If (Numpad_Trigger == "off")
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

6::
If (Numpad_Trigger == "off")
{
    Send, 6
    Return
}
Else
{
    6::&
    Return
}
Return

7::
If (Numpad_Trigger == "off")
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
If (Numpad_Trigger == "off")
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
If (Numpad_Trigger == "off")
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
; If (Numpad_Trigger == "off")
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
If (Numpad_Trigger == "off")
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

; sc079 is henkan key
$*sc079::
    if (issc079Repeat == true)      ;キーリピートしているかどうか
    {
        if (A_PriorKey != "sc079")      ;sc079長押し中の他キー押し下げを検出
        {
            KeyWait, sc079
            Send {Blind}{ShiftUp}       ;Shiftをリリース
            issc079Repeat := false
            Return
        }
        else Return
    }
    Send {Blind}{ShiftDown}     ;Shiftを押し下げ
    issc079Repeat := true
Return

;sc079を離したとき
$*sc079 up::
    Send {Blind}{ShiftUp}       ;Shiftをリリース
    issc079Repeat := false
    ; if (A_PriorKey == "sc079"){     ;sc079単押しを検出
    ;     Send {Blind}{sc079}     ;sc079を入力
    ; }
Return 

; sc07b is muhenkan key
$*sc07b::
    if (issc07bRepeat == true)      ;キーリピートしているかどうか
    {
        if (A_PriorKey != "sc07b")      ;sc07b長押し中の他キー押し下げを検出
        {
            KeyWait, sc07b
            Send {Blind}{ShiftUp}       ;Shiftをリリース
            issc07bRepeat := false
            Return
        }
        else Return
    }
    Send {Blind}{ShiftDown}     ;Shiftを押し下げ
    issc07bRepeat := true
Return

;sc07bを離したとき
$*sc07b up::
    Send {Blind}{ShiftUp}       ;Shiftをリリース
    issc07bRepeat := false
    ; if (A_PriorKey == "sc07b"){     ;sc07b単押しを検出
    ;     Send {Blind}{sc07b}     ;sc07bを入力
    ; }
Return 
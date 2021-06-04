
ReplacePowered(Input)
{
    pos = 1
    Pattern = \b\S*\.\^\s\d*f*
    While (pos != 0)
    {
        tpos := RegExMatch(Input, Pattern, Match, pos)
        ; MsgBox, %Match%
        pos := (tpos + StrLen(Match))
        If (pos != 0)
        {
            str_Tmp = Mathf.Pow(%Match%)
            ; MsgBox, %str_Tmp%
            StringReplace, str_Tmp, str_Tmp, .^ , `, , All
            ; MsgBox, %str_Tmp%

            StringReplace, Input, Input, %Match% , %str_Tmp%
            ; MsgBox, %Input%
        }
    }
    Return, Input
}

Delete_If(Input)
{
    pos = 1
    Pattern = \bif.*\r\n
    ; Pattern = \bif\s.*
    While (pos != 0)
    {
        tpos := RegExMatch(Input, Pattern, Match, pos)
        ; MsgBox, %Match%
        ; MsgBox, %tpos%
        If (tpos != 0)
        {
            pos := (tpos + 1)
            StringReplace, Input, Input, %Match% , , All
            ; MsgBox, %Input%
        }
        Else
        {
            pos = 0
        }
    }
    ; MsgBox, Delete_If fin
    Return, Input
}

Delete_End(Input)
{
    pos = 1
    Pattern = \bend(\r\n)*
    While (pos != 0)
    {
        tpos := RegExMatch(Input, Pattern, Match, pos)
        ; MsgBox, %Match%
        If (tpos != 0)
        {
            pos := (tpos + 1)
            StringReplace, Input, Input, %Match% , , All
            ; MsgBox, %Input%
        }
        Else
        {
            pos = 0
        }
    }
    ; MsgBox, Delete_End fin
    Return, Input
}

add_F_After_Number(Input)
{
    Pattern = \b\d+\.?\d*e?\+?-?\d*
    pos = 1
    While (pos != 0)
    {
        tpos := RegExMatch(Input, Pattern, Match, pos)
        ; MsgBox, tpos = %tpos%
        If (tpos != 0)
        {
            ; MsgBox, Match = %Match%
            pos := (tpos + StrLen(Match) + 1)
            StringMid, if_F, Input, tpos + StrLen(Match), 1
            if (if_F != "f")
            {
                StringLeft, str_Before, Input, tpos + StrLen(Match) - 1
                ; MsgBox, %str_Before%
                StringReplace, Input, Input, %str_Before% , %str_Before%f
                ; MsgBox, %Input%
            } 

            ; when containing same numbers, it always replace the firstone
            ; str_Before = %Match%f
            ; StringReplace, Input, Input, %Match% , %str_Before%
        }
        Else
        {
            pos = 0
        }
    }
    Return, Input
}

add_Float(Input)
{
    Pattern = \b.*\s=
    pos = 1
    While (pos != 0)
    {
        tpos := RegExMatch(Input, Pattern, Match, pos)
        ; MsgBox, tpos = %tpos%
        If (tpos != 0)
        {
            ; MsgBox, Match = %Match%
            pos := (tpos + StrLen("float "Match))
            floatpos := RegExMatch(Match, "float")
            if (floatpos == 0)
            {
                StringReplace, Input, Input, %Match% , float %Match%
                ; MsgBox, %Input%
            } 
        }
        Else
        {
            pos = 0
        }
    }
    Return, Input
}

add_Float_Varin(Input)
{
    Pattern = ,\s([^,]+)
    pos = 1
    While (pos != 0)
    {
        tpos := RegExMatch(Input, Pattern, Match, pos)
        ; MsgBox, tpos = %tpos%
        If (tpos != 0)
        {
            ; MsgBox, Match = %Match%
            pos := (tpos + StrLen(", float "Match1))
            floatpos := RegExMatch(Match1, "float")
            ; MsgBox, Match1 = %Match1%
            if (floatpos == 0)
            {
                StringReplace, Input, Input, `, %Match1%`, , `, float %Match1%`,
                ; MsgBox, %Input%
            } 
        }
        Else
        {
            pos = 0
        }
    }
    Return, Input
}

Esc::
    StringCaseSense, on
    old_Clipboard := ClipboardAll
    Clipboard = 
    Send, ^c
    ClipWait, 2
    Input = %Clipboard%
    replaced_Input = %Input%
    Sleep, 10

    replaced_Input := Delete_If(replaced_Input)
    Sleep, 10

    replaced_Input := Delete_End(replaced_Input)
    Sleep, 10

    replaced_Input := ReplacePowered(replaced_Input)
    Sleep, 10

    replaced_Input := add_F_After_Number(replaced_Input)
    Sleep, 10

    replaced_Input := add_Float(replaced_Input)
    Sleep, 10

    StringReplace, replaced_Input, replaced_Input, ./ , %A_Space%/, All
    Sleep, 10

    StringReplace, replaced_Input, replaced_Input, .* , %A_Space%*, All
    Sleep, 10

    StringReplace, replaced_Input, replaced_Input, cos , Mathf.Cos, All
    Sleep, 10

    StringReplace, replaced_Input, replaced_Input, sin , Mathf.Sin, All
    Sleep, 10

    ; MsgBox, %replaced_Input%
    ; MsgBox, fin
    StringCaseSense, off
    
    Clipboard := replaced_Input
    Send, ^v
    ClipWait, 2
    Clipboard := old_Clipboard
    ClipWait, 2
Return

~Shift & Esc::
    StringCaseSense, on
    old_Clipboard = %Clipboard%
    Clipboard = 
    Send, ^c
    ClipWait
    Input = %Clipboard%
    replaced_Input = %Input%

    replaced_Input := RegExReplace(replaced_Input, "\(", "(float ")

    tpos := RegExMatch(replaced_Input, "\b,\s([^,)]+)\)", Match, 1)
    ; MsgBox, %Match1%
    StringReplace, replaced_Input, replaced_Input, `, %Match1% , `, float %Match1%

    replaced_Input := add_Float_Varin(replaced_Input)

    StringCaseSense, off
    
    Clipboard = %replaced_Input%
    Send, ^v
    ClipWait
    Clipboard = %old_Clipboard%
    ClipWait
Return
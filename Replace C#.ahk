
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

Esc::
    StringCaseSense, on
    old_Clipboard = %Clipboard%
    Clipboard = 
    Send, ^c
    ClipWait
    Input = %Clipboard%
    replaced_Input = %Input%

    ; Pattern = \b\S*\.\^\s\d*
    replaced_Input := ReplacePowered(replaced_Input)

    replaced_Input := add_F_After_Number(replaced_Input)

    replaced_Input := add_Float(replaced_Input)

    StringReplace, replaced_Input, replaced_Input, ./ , %A_Space%/, All

    StringReplace, replaced_Input, replaced_Input, .* , %A_Space%*, All

    StringReplace, replaced_Input, replaced_Input, cos , Mathf.Cos, All

    StringReplace, replaced_Input, replaced_Input, sin , Mathf.Sin, All

    ; MsgBox, %replaced_Input%
    ; MsgBox, fin
    StringCaseSense, off
    
    Clipboard = %replaced_Input%
    Send, ^v
    Clipboard = %old_Clipboard%
Return


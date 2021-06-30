Run, suspend_Target.ahk, , , suspend_Target

Insert::
;Suspendコマンドを別のスクリプトに送信します
DetectHiddenWindows, On
WM_COMMAND := 0x111
ID_FILE_SUSPEND := 65404
PostMessage, WM_COMMAND, ID_FILE_SUSPEND,,, C:\Users\5950x\Documents\OneDrive - The University of Tokyo\AutoHotKey\Sample\suspend_Target.ahk ahk_class AutoHotkey
Return
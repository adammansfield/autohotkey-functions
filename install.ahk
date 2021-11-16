FileCreateDir, %A_MyDocuments%\AutoHotkey\Lib\
RunWait, cmd.exe /c "rmdir %A_MyDocuments%\AutoHotkey\Lib\autohotkey-functions"
RunWait, cmd.exe /c "mklink /D %A_MyDocuments%\AutoHotkey\Lib\autohotkey-functions %A_ScriptDir%"

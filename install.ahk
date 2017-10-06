FileCreateDir, %A_MyDocuments%\AutoHotkey\Lib\
Run, cmd.exe /c "mklink /D %A_MyDocuments%\AutoHotkey\Lib\autohotkey-functions %A_ScriptDir%"

#NoEnv

#Include <Yunit\Yunit>
#Include <Yunit\Window>
#Include commands.ahk
#include test\small\string.ahk

Yunit.Use(YunitWindow).Test(
    ,StringTests)

#if WinActive("Yunit Testing")
  F5::reload
#if

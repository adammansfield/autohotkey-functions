#NoEnv

#Include <Yunit\Yunit>
#Include <Yunit\Window>
#Include commands.ahk
#include test\large\environment_variable.ahk

Yunit.Use(YunitWindow).Test(
    ,EnvironmentVariableTests)

#if WinActive("Yunit Testing")
  F5::reload
#if

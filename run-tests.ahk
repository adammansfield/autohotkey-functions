#NoEnv

#Include <Yunit/Yunit>
#Include <Yunit/Window>
#Include functions.ahk
#include test/environment-variable.test.ahk
#include test/string.test.ahk

Yunit.Use(YunitWindow).Test(
    ,EnvironmentVariableTests
    ,StringTests)

#if WinActive("Yunit Testing")
  F5::reload
#if

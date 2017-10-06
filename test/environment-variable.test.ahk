class EnvironmentVariableTests
{
  Begin()
  {
    this.key := "AutohotkeyFunctionsTest"
  }

  End()
  {
    this.remove("key")
  }

  EnvAdd()
  {
    key := this.key
    value := 10
    add_value := 5

    EnvSet, %key%, %value%
    EnvAdd, %key%, %add_value%
    EnvGet, expected, %key%

    EnvSet, %key%, %value%
    EnvAdd(key, add_value)
    EnvGet, actual, %key%

    Yunit.Assert(expected == actual)
  }

  EnvAdd_With_TimeUnits()
  {
    key := this.key
    value := A_Now
    add_value := 2000
    timeunit := "days"

    EnvSet, %key%, %value%
    EnvAdd, %key%, %add_value%, %timeunit%
    EnvGet, expected, %key%

    EnvSet, %key%, %value%
    EnvAdd(key, add_value, timeunit)
    EnvGet, actual, %key%

    Yunit.Assert(expected == actual)
  }

  EnvDiv()
  {
    key := this.key
    value := 20
    divisor := 4

    EnvSet, %key%, %value%
    EnvDiv, %key%, %divisor%
    EnvGet, expected, %key%

    EnvSet, %key%, %value%
    EnvDiv(key, divisor)
    EnvGet, actual, %key%

    Yunit.Assert(expected == actual)
  }

  EnvGet()
  {
    value := "EnvGetTest"
    EnvSet, % this.key, % value
    Yunit.Assert(0 == ErrorLevel)

    EnvGet, expected, % this.key
    actual := EnvGet(this.key)
    Yunit.Assert(expected == actual)
    Yunit.Assert(value == actual)
  }

  EnvMult()
  {
    key := this.key
    value := 12
    multiplier := 4

    EnvSet, %key%, %value%
    EnvDiv, %key%, %multiplier%
    EnvGet, expected, %key%

    EnvSet, %key%, %value%
    EnvDiv(key, multiplier)
    EnvGet, actual, %key%

    Yunit.Assert(expected == actual)
  }

  EnvUpdate()
  {
    ErrorLevel := 1 ; Ensure this is set.
    EnvUpdate()
    Yunit.Assert(0 == ErrorLevel)
  }

  EnvSet()
  {
    value := "EnvSetTest"
    EnvSet(this.key, value)
    Yunit.Assert(0 == ErrorLevel)

    EnvGet, actual, % this.key
    Yunit.Assert(value == actual)
  }

  EnvSub()
  {
    key := this.key
    value := 200
    sub_value := 15

    EnvSet, %key%, %value%
    EnvSub, %key%, %sub_value%
    EnvGet, expected, %key%

    EnvSet, %key%, %value%
    EnvSub(key, sub_value)
    EnvGet, actual, %key%

    Yunit.Assert(expected == actual)
  }

  EnvSub_With_TimeUnits()
  {
    key := this.key
    value := A_Now
    sub_value := 50
    timeunit := "seconds"

    EnvSet, %key%, %value%
    EnvSub, %key%, %sub_value%, %timeunit%
    EnvGet, expected, %key%

    EnvSet, %key%, %value%
    EnvSub(key, sub_value, timeunit)
    EnvGet, actual, %key%

    Yunit.Assert(expected == actual)
  }
}

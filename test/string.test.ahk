class StringTests
{
  Begin()
  {
    this.string := "sample string"
  }

  End()
  {
    this.remove("string")
  }

  StringLen()
  {
    StringLen, expected, % this.string
    actual := StringLen(this.string)
    Yunit.Assert(expected == actual)
  }

  StringLower()
  {
    StringLower, expected, % this.string
    actual := StringLower(this.string)
    Yunit.Assert(expected == actual)
  }

  StringLower_With_T()
  {
    StringLower, expected, % this.string, T
    actual := StringLower(this.string, "T")
    Yunit.Assert(expected == actual)
  }

  StringUpper()
  {
    StringUpper, expected, % this.string
    actual := StringUpper(this.string)
    Yunit.Assert(expected == actual)
  }

  StringUpper_With_T()
  {
    StringUpper, expected, % this.string, T
    actual := StringUpper(this.string, "T")
    Yunit.Assert(expected == actual)
  }
}

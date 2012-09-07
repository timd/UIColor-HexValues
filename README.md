UIColor-HexValues
=================

Being a small, but exquisitely-formed category on UIColor to create color objects from hex values.

Usage
=====

`+(UIColor *)colorWithHexString:(NSString *)hexString;`

* Add `UIColor+HexValues.h` and `UIColor+HexValues.m` into the project.
* Import `UIColor+HexValues.h` into the class.
* Use with `UIColor *myColor = [UIColor colorWithHexString:@"aa22cc"];`

The hex string should not include a # character.  The method will check for non-hex values, or values that are not valid colors.

`ColorTests.m` are Kiwi-based unit tests.
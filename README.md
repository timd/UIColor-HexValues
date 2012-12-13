# UIColor-HexValues
=================

Being a small, but exquisitely-formed category on `UIColor` to create color objects from hex values, and vice versa.

## Usage
=====

* Add `UIColor+HexValues.h` and `UIColor+HexValues.m` into the project.
* Import `UIColor+HexValues.h` into the class.

### Converting from hex values to UIColor

`+(UIColor *)colorWithHexString:(NSString *)hexString;`

* Use with `UIColor *myColor = [UIColor colorWithHexString:@"aa22cc"];`

The hex string should not include a `#` character.  The method will check for non-hex values, or values that are not valid colors.

### Converting from UIColor to hex values

`+(NSString *)hexValuesFromUIColor:(UIColor *)color;`

* Use with `NSString *hexValue = [UIColor hexValuesFromUIColor:[UIColor colorWithRed:0.711 green:0.773 blue:1.000 alpha:1.000];`
 
This will return `b5c5ff`.

The returned hex string does not include a `#` character.

`[UIColor whiteColor]` is treated as a special case, as it isn't within the RGB color space.  The return value is `ffffff` as would be expected, though.

### Tests

`ColorTests.m` are Kiwi-based unit tests.

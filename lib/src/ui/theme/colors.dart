import 'package:flutter/material.dart';

class BrandColors {
  static Color get yellow => const Color(0xffffb732);

  static Color get white => const Color(0xffffffff);

  static Color get blue => const Color(0xff22c0e8);

  static Color get green => const Color(0xff65be3e);

  static Color get black => const Color(0xff3b3b3b);
}

final colorScheme = ColorScheme(
  brightness: Brightness.dark,

  primary: BrandColors.white,
  primaryVariant: BrandColors.blue,
  onPrimary: Colors.yellow[700],

  secondary: BrandColors.black,
  secondaryVariant: BrandColors.green,
  onSecondary: Colors.black87,

  background: BrandColors.white,
  onBackground: Colors.black,

  surface: BrandColors.white,
  onSurface: Colors.black,

  error: Colors.redAccent,
  onError: Colors.black87,
);

/*class BrandedColorScheme extends ColorScheme {
  @override
  Color get primary => BrandColors.yellow;

  @override
  Color get onPrimary => Colors.white;

  @override
  Color get secondary => BrandColors.bitterSweet;

  @override
  Color get onSecondary => Colors.black87;

  @override
  Color get background => BrandColors.yellow;

  @override
  Color get onBackground => Colors.white;

  @override
  Color get surface => BrandColors.yellow;

  @override
  Color get onSurface => Colors.white;

  @override
  Color get error => Colors.redAccent;

  @override
  Color get onError => Colors.black87;
}*/

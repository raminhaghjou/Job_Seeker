import 'package:flutter/material.dart';

import 'package:space/src/ui/theme/colors.dart';

ThemeData buildTheme() {
  final base = ThemeData.light();

  return base.copyWith(
    colorScheme: colorScheme,
    primaryColor: colorScheme.primary,
    primaryColorDark: colorScheme.primaryVariant,
    accentColor: colorScheme.secondary,
    scaffoldBackgroundColor: colorScheme.background,
    cardColor: colorScheme.surface,
    canvasColor: colorScheme.surface,
    primaryIconTheme: _buildIconTheme(
      base.accentIconTheme,
      color: colorScheme.secondary,
    ),
    textTheme: _buildTextTheme(base.textTheme),
    primaryTextTheme: _buildTextTheme(base.primaryTextTheme),
    accentTextTheme: _buildTextTheme(base.accentTextTheme),
    snackBarTheme: base.snackBarTheme.copyWith(
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
  );
}

IconThemeData _buildIconTheme(
  IconThemeData base, {
  Color color,
  double opacity,
  double size,
}) =>
    base.copyWith(
      color: color,
      opacity: opacity,
      size: size,
    );

TextTheme _buildTextTheme(TextTheme base) {
  return base.copyWith(
    headline: base.headline.copyWith(
      fontFamily: 'VarelaRound',
      color: Color(0xff3b3b3b),
      fontSize: 14,
    ),
    title: base.title.copyWith(
      fontFamily: 'VarelaRound',
      color: Color(0xff3b3b3b),
      fontSize: 11,
    ),
    button: base.button.copyWith(
      fontFamily: 'VarelaRound',
      fontSize: 12,
    ),
  );
}

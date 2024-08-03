import 'package:flutter/material.dart';
import 'package:hw_app/app/core/colors/color_data.dart';

class MainThemeData {
  factory MainThemeData() {
    return _mainThemeData;
  }

  MainThemeData._internal();

  static final MainThemeData _mainThemeData = MainThemeData._internal();

  final ThemeData lightTheme = ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    brightness: Brightness.light,
    primaryColor: ColorData.kColorPrimary,
    scaffoldBackgroundColor: ColorData.kColorBg,
    colorScheme: ColorScheme.fromSeed(seedColor: ColorData.kColorBg),
  );

  final ThemeData darkTheme = ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    brightness: Brightness.dark,
    primaryColor: ColorData.primaryDark,
    scaffoldBackgroundColor: ColorData.primaryDark,
    // colorScheme: ColorScheme.fromSeed(seedColor: ColorData.kColorBg),
  );
}

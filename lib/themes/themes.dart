import 'package:flutter/material.dart';

class AppThemes {
  ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.light(
      brightness: Brightness.light,
      primary: Colors.grey.shade100,
      // Primary color
      onPrimary: Colors.black,
      // Text/icon color on primary
      secondary: Colors.white,
      onSecondary: Colors.black,
      error: Colors.red,
      onError: Colors.white,
      surface: Colors.white,
      onSurface: Colors.black,
    ),
    useMaterial3: true,
  );

  ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme.dark(
      brightness: Brightness.dark,
      primary: Colors.grey.shade900, // Primary color
      onPrimary: Colors.white,     // Text/icon color on primary
      secondary: Colors.black,
      onSecondary: Colors.white,
      error: Colors.red,
      onError: Colors.white,
      surface: Colors.grey.shade800,
      onSurface: Colors.white,
    ),
    useMaterial3: true,
  );
}
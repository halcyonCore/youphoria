import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ColorScheme darkColorScheme = const ColorScheme(
  primary: Color(0xFF006C74),
  secondary: Color(0xFF006C74),
  background: Color(0xFFFC2E2E),
  surface: Color(0xFF0c1421),
  brightness: Brightness.dark,
  error: Color(0xFF9F65EE),
  onPrimary: Colors.white,
  onSecondary: Colors.white,
  onBackground: Colors.white,
  onSurface: Colors.white,
  onError: Colors.white,
);

var appTheme = ThemeData(
  fontFamily: GoogleFonts.openSans().fontFamily,
  brightness: Brightness.dark,
  colorScheme: darkColorScheme,
  textTheme: const TextTheme(
    bodyLarge: TextStyle(fontSize: 18),
    bodyMedium: TextStyle(fontSize: 16),
    labelLarge: TextStyle(
      letterSpacing: 1.5,
      fontWeight: FontWeight.bold,
    ),
    displayLarge: TextStyle(
      fontWeight: FontWeight.bold,
    ),
    titleMedium: TextStyle(
      color: Colors.grey,
    ),
  ),
  buttonTheme: const ButtonThemeData(),
);

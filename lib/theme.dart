import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF56ACF5),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFEDF5FF),
  onPrimaryContainer: Color(0xFF003A4B),
  secondary: Color(0xFF8F7BEE),
  onSecondary: Color(0xFF120052),
  secondaryContainer: Color(0xFFF6F4FF),
  onSecondaryContainer: Color(0xFF1A0261),
  tertiary: Color(0xFFF0614F),
  onTertiary: Color(0xFF521200),
  tertiaryContainer: Color(0xFFFEEDE6),
  onTertiaryContainer: Color(0xFF410004),
  error: Color(0xFFBA1A1A),
  errorContainer: Color(0xFFFFB0C8), // modified
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFF410002),
  background: Color(0xFFFFFBFF), // leave as is
  onBackground: Color(0xFF2B0052),
  surface: Color(0xFFFFFBFF),
  onSurface: Color(0xFF78BCF7),
  surfaceVariant: Color(0xFFDBE4E7),
  onSurfaceVariant: Color(0xFF8F7BEE),
  outline: Color(0xFF094074),
  onInverseSurface: Color(0xFFF9ECFF),
  inverseSurface: Color(0xFF0A2463), // modified
  inversePrimary: Color(0xFF56D6F5),
  shadow: Color(0xFF000000),
  surfaceTint: Color.fromARGB(255, 214, 19, 152),
  outlineVariant: Color(0xFFBFC8CB),
  scrim: Color(0xFFb3d1ff), // modified
);

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFF56D6F5),
  onPrimary: Color(0xFF003641),
  primaryContainer: Color(0xFF004E5D),
  onPrimaryContainer: Color(0xFFADECFF),
  secondary: Color(0xFFC8BFFF),
  onSecondary: Color(0xFF2F2175),
  secondaryContainer: Color(0xFF463A8D),
  onSecondaryContainer: Color(0xFFE5DEFF),
  tertiary: Color(0xFFFFB3AD),
  onTertiary: Color(0xFF68000A),
  tertiaryContainer: Color(0xFF930013),
  onTertiaryContainer: Color(0xFFFFDAD7),
  error: Color(0xFFFFB4AB),
  errorContainer: Color(0xFF93000A),
  onError: Color(0xFF690005),
  onErrorContainer: Color(0xFFFFDAD6),
  background: Color(0xFF2B0052),
  onBackground: Color(0xFFEFDBFF),
  surface: Color(0xFF2B0052),
  onSurface: Color(0xFFEFDBFF),
  surfaceVariant: Color(0xFF3F484B),
  onSurfaceVariant: Color(0xFFBFC8CB),
  outline: Color(0xFF899295),
  onInverseSurface: Color(0xFF2B0052),
  inverseSurface: Color(0xFFEFDBFF),
  inversePrimary: Color(0xFF00687A),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF56D6F5),
  outlineVariant: Color(0xFF3F484B),
  scrim: Color(0xFF000000),
);

@immutable
class YouphoriaTheme {
  ThemeData toThemeData() {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: lightColorScheme,
      fontFamily: GoogleFonts.comfortaa().fontFamily,
      navigationBarTheme: const NavigationBarThemeData(
        // Set the active color to the color you want to use for the selected item
        indicatorColor: Color(0xFF56ACF5),
      ),
    );
  }
}

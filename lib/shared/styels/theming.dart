import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colores.dart';

class MyThemeData {
  static ThemeData lightData = ThemeData(
      appBarTheme: AppBarTheme(
          titleTextStyle: GoogleFonts.poppins(
        fontSize: 22,
        fontWeight: FontWeight.w700,
      )),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black),
      bottomAppBarTheme: BottomAppBarTheme(
        color: Colors.white,
        shape: CircularNotchedRectangle(),
      ),
      scaffoldBackgroundColor: mintGreen,
      colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: Color(0XFFDFECDB),
        onPrimary: Colors.white,
        background: Colors.white,
        onBackground: Colors.white,
        secondary: Colors.white,
        onSecondary: Colors.white,
        error: Colors.white,
        onError: Colors.white,
        surface: Colors.white,
        onSurface: Colors.white,
      ));
  static ThemeData darkData = ThemeData(
      appBarTheme: AppBarTheme(
          titleTextStyle: GoogleFonts.poppins(
        fontSize: 22,
        fontWeight: FontWeight.w700,
      )),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black),
      bottomAppBarTheme: BottomAppBarTheme(
        color: Colors.white,
        shape: CircularNotchedRectangle(),
      ),
      scaffoldBackgroundColor: mintGreen,
      colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: Color(0XFF1E1E1E),
        onPrimary: Color(0XFF1E1E1E),
        background: Color(0XFF1E1E1E),
        onBackground: Color(0XFF1E1E1E),
        secondary: Color(0XFF1E1E1E),
        onSecondary: Color(0XFF1E1E1E),
        error: Color(0XFF1E1E1E),
        onError: Color(0XFF1E1E1E),
        surface: Color(0XFF1E1E1E),
        onSurface: Color(0XFF1E1E1E),
      ));
}

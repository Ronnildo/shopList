import 'package:flutter/material.dart';

class TemaApp {
  static const _lightColor = Color(0xFF89CDB2);

  static final ColorScheme _temaClaro = ColorScheme(
    brightness: Brightness.light,
    primary: _lightColor,
    onPrimary: const Color(0xFF158B49),
    secondary: const Color(0xFF1B693D),
    onSecondary: Colors.black,
    error: Colors.red,
    onError: const Color(0xFF906E58),
    background: Colors.white,
    onBackground: const Color(0xFF89CDB2),
    surface: Colors.black,
    onSurface: Colors.black.withOpacity(0.1),
  );

  static const TextTheme _temaTexto = TextTheme(
    headline2: TextStyle(
      fontSize: 60,
      fontWeight: FontWeight.w900,
      color: Colors.black,
      fontFamily: "Poppins",
    ),
    headline3: TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.w800,
      fontFamily: "Poppins",
      color: Color(0xFFA6BAB2),
    ),
    headline4: TextStyle(
      fontSize: 34,
      fontWeight: FontWeight.w700,
      fontFamily: "Poppins",
      color: Colors.black,
    ),
    headline5: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w600,
      fontFamily: "Poppins",
      color: Color(0xFFA6BAB2),
    ),
    headline6: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500,
    ),
    bodyText1: TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.bold,
      color: Color(0xFFA6BAB2),
      fontFamily: "Poppins",
    ),
    subtitle2: TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.w700,
      fontFamily: "Poppins",
      color: Colors.black,
    ),
    subtitle1: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w700,
      fontFamily: "Poppins",
    ),
    button: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w700,
      color: Colors.white,
      fontFamily: "Poppins",
    ),
    overline: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w200,
      fontFamily: "Poppins",
    ),
  );

  static ThemeData themeData(ColorScheme colorScheme, TextTheme textTheme) =>
      ThemeData(
        primarySwatch: Colors.blueGrey,
        primaryColor: const Color(0xFF4A9777),
        colorScheme: colorScheme,
        focusColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: colorScheme.secondary,
        ),
        textTheme: _temaTexto,
        fontFamily: "Poppins",
      );
  static ThemeData tema = themeData(_temaClaro, _temaTexto);
}

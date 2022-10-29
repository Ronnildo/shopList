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
    headline1: TextStyle(
      // Estilo para Título Fora AppBar
      fontSize: 60,
      fontWeight: FontWeight.w700,
      color: Colors.black,
      fontFamily: "Poppins",
    ),
    headline2: TextStyle(
      // Estilo de Título dentro da AppBar
      fontSize: 40,
      fontWeight: FontWeight.w700,
      color: Colors.black,
      fontFamily: "Poppins",
    ),
    headline3: TextStyle(
      // Estilo Ppara título do Card
      fontSize: 40,
      fontWeight: FontWeight.w700,
      fontFamily: "Poppins",
      color: Color(0xFFA6BAB2),
    ),
    headline4: TextStyle(
      // Estilo para o subtitilo
      fontSize: 34,
      fontWeight: FontWeight.w700,
      fontFamily: "Poppins",
      color: Colors.black,
    ),
    headline5: TextStyle(
      // Estilo para categoria do card na main
      fontSize: 28,
      fontWeight: FontWeight.w600,
      fontFamily: "Poppins",
      color: Color(0xFFA6BAB2),
    ),
    headline6: TextStyle(
      // Estilo para link texto
      fontSize: 20,
      color: Colors.white,
      fontWeight: FontWeight.w600,
    ),
    bodyText1: TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.bold,
      color: Color(0xFFA6BAB2),
      fontFamily: "Poppins",
    ),
    subtitle2: TextStyle(
      // Estilo de título do popUp
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
      // Estilo texto do botão
      fontSize: 28,
      fontWeight: FontWeight.w700,
      color: Colors.white,
      fontFamily: "Poppins",
    ),
    overline: TextStyle(
      // Estilo do texto
      fontSize: 20,
      fontWeight: FontWeight.w200,
      fontFamily: "Poppins",
      color: Colors.white,
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

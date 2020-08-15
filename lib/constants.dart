import 'package:flutter/material.dart';

var kLightTheme = ThemeData(
  scaffoldBackgroundColor: Color(0xFFD4ECFF),
  appBarTheme: AppBarTheme(
    color: Color(0xFFD4ECFF),
    centerTitle: false,
    shadowColor: Colors.transparent,
  ),
  primaryColor: Color(0xFF05131E),
  fontFamily: 'Pier Sans',
);

var kDarkTheme = ThemeData(
  scaffoldBackgroundColor: Color(0xFF05131E),
  appBarTheme: AppBarTheme(
    color: Color(0xFF05131E),
    centerTitle: false,
    shadowColor: Colors.transparent,
    textTheme: TextTheme(
      headline6: TextStyle(
        color: Color(0xFFD4ECFF),
        fontSize: 17.0,
        letterSpacing: 3,
        fontFamily: 'Pier Sans',
        fontWeight: FontWeight.w700,
      ),
    ),
  ),
  primaryColor: Color(0xFFD4ECFF),
  fontFamily: 'Pier Sans',
  textTheme: TextTheme(
    headline2: TextStyle(
      color: Color(0xFFD4ECFF),
      fontSize: 60.0,
      fontWeight: FontWeight.bold,
    ),
    headline4: TextStyle(
      color: Color(0xFFD4ECFF),
      fontSize: 30.0,
    ),
  ),
);

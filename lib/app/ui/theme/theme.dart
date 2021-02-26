import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color primary = Color(0xff070D0C);
Color secundary = Color(0xff0D2622);
Color ligth = Color(0xff00A22D);

ThemeData theme = ThemeData(
  primaryColor: primary,
  secondaryHeaderColor: secundary,
  textTheme: TextTheme(
    headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
    headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
    bodyText1: GoogleFonts.poppins(fontSize: 14.0, color: Colors.white),
    bodyText2: GoogleFonts.poppins(fontSize: 14.0, color: Colors.white),
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white, width: 0.0),
    ),
    enabledBorder: const OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white, width: 0.0),
    ),
    disabledBorder: const OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white, width: 1.0),
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white, width: 1.0),
    ),
    fillColor: Colors.white,
    focusColor: Colors.white,
    hoverColor: Colors.white,
    helperStyle: TextStyle(color: Colors.white, fontSize: 14.0),
    suffixStyle: TextStyle(color: Colors.white, fontSize: 14.0),
    counterStyle: TextStyle(color: Colors.white, fontSize: 14.0),
    errorStyle: TextStyle(color: Colors.white, fontSize: 14.0),
    prefixStyle: TextStyle(color: Colors.white, fontSize: 14.0),
    hintStyle: TextStyle(color: Colors.white, fontSize: 14.0),
    labelStyle: TextStyle(color: Colors.white, fontSize: 14.0),
  ),
);

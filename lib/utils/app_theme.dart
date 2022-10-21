import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();
  //TODO: Setup/Edit theme data here

  static ThemeData lightTheme (){
    return ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        highlightColor: const Color(0xFF202020),
        brightness: Brightness.light,
        scaffoldBackgroundColor: const Color(0xFFFEFEFE),
        backgroundColor: const Color(0xFFFEFEFE),
        primaryColor: const Color(0xFF16A6E9),
        primaryColorLight: const Color(0xFF3891CA),
        shadowColor: Colors.black54,
        appBarTheme: const AppBarTheme(
            centerTitle: true,
            iconTheme: IconThemeData(
              color: Color(0xFF202020),
            ),
            titleTextStyle: TextStyle(
              color: Color(0xFF202020),
              fontSize: 16.5,
            ),
            titleSpacing: 1.5,
            backgroundColor: Color(0xFFFEFEFE),
            elevation: 0
        ),
        textTheme: const TextTheme(
            subtitle1: TextStyle(
              color: Color(0xFF202020),
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
            subtitle2: TextStyle(
              color: Color(0xFF202020),
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
            bodyText1: TextStyle(
              color: Color(0xFF202020),
              fontSize: 12.5,
            ),
            bodyText2: TextStyle(
              color: Color(0xFF202020),
              fontSize: 11,
            ),
            headline6: TextStyle(
              color: Color(0xFF202020),
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
            headline5: TextStyle(
              color: Color(0xFF202020),
              fontWeight: FontWeight.w600,
              fontSize: 28,
            )
        )
    );
  }

  static ThemeData darkTheme (){
    return ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        highlightColor: const Color(0xFFFEFEFE),
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF202020),
        backgroundColor: const Color(0xFF202020),
        primaryColor: const Color(0xFF16A6E9),
        primaryColorLight: const Color(0xFF3891CA),
        shadowColor: Colors.black54,
        appBarTheme: const AppBarTheme(
            centerTitle: true,
            iconTheme: IconThemeData(
              color: Color(0xFFFEFEFE),
            ),
            titleTextStyle: TextStyle(
              color: Color(0xFFFEFEFE),
              fontSize: 16.5,
            ),
            titleSpacing: 1.5,
            backgroundColor: Color(0xFF202020),
            elevation: 0
        ),
        textTheme: const TextTheme(
            subtitle1: TextStyle(
              color: Color(0xFFFEFEFE),
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
            subtitle2: TextStyle(
              color: Color(0xFFFEFEFE),
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
            bodyText1: TextStyle(
              color: Color(0xFFFEFEFE),
              fontSize: 12.5,
            ),
            bodyText2: TextStyle(
              color: Color(0xFFFEFEFE),
              fontSize: 11,
            ),
            headline6: TextStyle(
              color: Color(0xFFFEFEFE),
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
            headline5: TextStyle(
              color: Color(0xFFFEFEFE),
              fontWeight: FontWeight.w600,
              fontSize: 28,
            )
        )
    );
  }
}
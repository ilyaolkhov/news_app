import 'package:flutter/material.dart';

final themeLight = ThemeData(
  cardTheme: CardTheme(color: Colors.white),
  cardColor: Colors.white,
  appBarTheme: const AppBarTheme(
    titleTextStyle: TextStyle(
        fontSize: 24,
        color: Color(
          (0xFF333647),
        ),
        fontWeight: FontWeight.w600
    ),
  ),
  useMaterial3: true,
);


final greyPrimary = Color(0xFF7C81A1);
final blackPrimary = Color(0xFF333647);
final greyLighter = Color(0xFFF3F3F6);
final purplePrimary = Color(0xFF465AD6);
final greyDarker = Color(0xFF666C8E);
final blackLighter = Color.fromARGB(255, 85, 90, 119);

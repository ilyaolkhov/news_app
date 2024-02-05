import 'package:flutter/material.dart';
import 'package:news_app/Theme.dart';
import 'package:news_app/feature/login_auth_screen/LoginAuthScreen.dart';
import 'package:news_app/feature/mainScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: themeLight,
      routes: {
          '/':(context) => LoginAuthScreen(),
        'mainScreen':(context)=> MainScreen()


      },
      initialRoute: '/',
    );
  }
}

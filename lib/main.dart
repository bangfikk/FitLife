import 'package:fitlife/Home.dart';
import 'package:fitlife/Journal.dart';
import 'package:fitlife/Login.dart';
import 'package:fitlife/Register.dart';
import 'package:fitlife/splash_screen.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      title: 'FitLife',
      initialRoute: '/journal',
      routes: {
        '/splashscreen': (context) => SplaschScreen(),
        '/login': (context) => Login(),
        '/register': (context) => Register(),
        '/home': (context) => Home(),
        '/journal': (context) => Journal(),
      },
    );
  }
}

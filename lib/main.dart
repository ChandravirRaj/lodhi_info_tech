import 'package:flutter/material.dart';
import 'package:lodhi_info_tech/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        splashColor: Colors.red,
        textTheme: const TextTheme(
          headline1: TextStyle(color: Colors.grey, fontSize: 25, fontFamily: 'FontRobotoBold'),
          headline2: TextStyle(color: Colors.white, fontSize: 22, fontFamily: 'FontRobotoMedium'),
          headline3: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'FontRobotoRegular'),
          headline4: TextStyle(color: Colors.black, fontSize: 25, fontFamily: 'FontRobotoRegular'),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}

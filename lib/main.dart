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
        primaryColor: Colors.red.shade700,
        primaryColorDark: Colors.red.shade400,
        primaryColorLight: Colors.red.shade100,
        splashColor: Colors.red,
        appBarTheme: AppBarTheme(
          color: Colors.red.shade500,
          centerTitle: true,
          shadowColor: Colors.grey,
          titleTextStyle: const TextStyle(color: Colors.white, fontSize: 22,
              fontFamily: 'FontRobotoMedium'),
          iconTheme: const IconThemeData(color: Colors.white,size: 30)

        ),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(color: Colors.grey, fontSize: 25, fontFamily: 'FontRobotoBold'),
          headlineMedium: TextStyle(color: Colors.white, fontSize: 22, fontFamily: 'FontRobotoMedium'),
          headlineSmall: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'FontRobotoMedium'),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}

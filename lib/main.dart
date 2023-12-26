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
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        splashColor: Colors.red
      ),
      home: const SplashScreen(),
    );
  }
}

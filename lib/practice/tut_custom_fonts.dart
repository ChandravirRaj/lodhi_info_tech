import 'package:flutter/material.dart';

class CustomFonts extends StatefulWidget {
  const CustomFonts({super.key});

  @override
  State<CustomFonts> createState() => _CustomFontsState();
}

class _CustomFontsState extends State<CustomFonts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom Fonts"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.green.shade50,
        child: Column(
          children: const [
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: Text(
                "Welcome to Custom Fonts",
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 30,
                  fontFamily: 'FontRobotoBold'
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "Roboto Regular Font",
                style: TextStyle(
                    color: Colors.brown,
                    fontSize: 30,
                    fontFamily: 'FontRobotoRegular'
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "Roboto Medium Font",
                style: TextStyle(
                    color: Colors.brown,
                    fontSize: 30,
                    fontFamily: 'FontRobotoMedium'
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "Roboto Bold Font",
                style: TextStyle(
                    color: Colors.brown,
                    fontSize: 30,
                    fontFamily: 'FontRobotoBold'
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "Roboto Light Font",
                style: TextStyle(
                    color: Colors.brown,
                    fontSize: 30,
                    fontFamily: 'FontRobotoLight'
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "Roboto Thin Font",
                style: TextStyle(
                    color: Colors.brown,
                    fontSize: 30,
                    fontFamily: 'FontRobotoThin'
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

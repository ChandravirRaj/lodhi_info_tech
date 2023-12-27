import 'package:flutter/material.dart';

import '../utils/util.dart';

class CustomThemeStyleOne extends StatefulWidget {
  const CustomThemeStyleOne({super.key});

  @override
  State<CustomThemeStyleOne> createState() => _CustomThemeStyleOneState();
}

class _CustomThemeStyleOneState extends State<CustomThemeStyleOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Theme Style",
            style: Util.headerTitleTextStyle(
                textColor: Colors.white,
                fontSize: 25)),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: Text(
                "Welcome to Custom Fonts",
                style: Util.headerTitleTextStyle(fontSize: 30),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "Roboto Regular Font",
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "Roboto Medium Font",
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "Roboto Bold Font",
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "Roboto Light Font",
                style: TextStyle(
                    color: Colors.brown,
                    fontSize: 30,
                    fontFamily: 'FontRobotoLight'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "Roboto Thin Font",
                style: TextStyle(
                    color: Colors.brown,
                    fontSize: 30,
                    fontFamily: 'FontRobotoThin'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

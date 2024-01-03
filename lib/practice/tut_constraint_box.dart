import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lodhi_info_tech/utils/util.dart';

class MyConstraintBox extends StatefulWidget {
  const MyConstraintBox({super.key});

  @override
  State<MyConstraintBox> createState() => _MyConstraintBoxState();
}

class _MyConstraintBoxState extends State<MyConstraintBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Positioned Widget",
          style:
              Util.headerTitleTextStyle(textColor: Colors.white, fontSize: 25),
        ),
      ),
      body: Container(
        width: double.infinity,
        color: Colors.lightGreen.shade100,
        child: Center(
          child: Container(
            // color: Colors.grey,
            child: ConstrainedBox(
              // constraints: const BoxConstraints.expand(width: 200, height: 200),
              // constraints: BoxConstraints.loose(const Size(250, 200)),
              // constraints: BoxConstraints.tight(Size.infinite),
              // constraints: BoxConstraints.tight(Size.zero),
              constraints: BoxConstraints.tight(Size(300,200)),
              child: const Card(
                child: Center(child: Text('Hello World!',style: TextStyle(color: Colors.white,fontSize: 25))),
                elevation: 20,
                color: Colors.lightGreen,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

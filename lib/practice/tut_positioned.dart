import 'package:flutter/material.dart';
import 'package:lodhi_info_tech/utils/util.dart';

class PositionedWidget extends StatefulWidget {
  const PositionedWidget({super.key});

  @override
  State<PositionedWidget> createState() => _PositionedWidgetState();
}

class _PositionedWidgetState extends State<PositionedWidget> {
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
          child: SizedBox(
            width: 300,
            height: 300,
            // color: Colors.grey,
            child: Stack(
              children: [
                Positioned(
                  left: 90,
                  top: 50,
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.red.shade400,
                        shape: BoxShape.rectangle,
                        border:
                        Border.all(width: 3, color: Colors.black54),
                        borderRadius:
                        const BorderRadius.all(Radius.circular(10.0)),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5.0,
                              spreadRadius: 5.0),
                        ]),
                  ),
                ),
                Positioned(
                  left: 10,
                  top: 125,
                  right: 100,
                  child: Container(
                    height: 50,
                    width: 180,
                    decoration: BoxDecoration(
                        color: Colors.purpleAccent.shade400,
                        shape: BoxShape.rectangle,
                        border:
                        Border.all(width: 3, color: Colors.black54),
                        borderRadius:
                        const BorderRadius.all(Radius.circular(10.0)),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5.0,
                              spreadRadius: 5.0),
                        ]),
                    child: Center(
                        child: Text(
                      "I am on bottom",
                      style: Util.regularTextStyle(textColor: Colors.white),
                    )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

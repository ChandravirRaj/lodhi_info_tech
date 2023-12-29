import 'package:flutter/material.dart';
import 'package:lodhi_info_tech/utils/util.dart';

class MyStack extends StatefulWidget {
  const MyStack({super.key});

  @override
  State<MyStack> createState() => _MyStackState();
}

class _MyStackState extends State<MyStack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter Stack",
          style:
              Util.headerTitleTextStyle(textColor: Colors.white, fontSize: 25),
        ),
      ),
      body: Container(
        width: double.infinity,
        color: Colors.lightGreen.shade100,
        child: Center(
          child: Container(
            width: 300,
            height: 300,

            // color: Colors.grey,
            child: Stack(
              children: [
                Positioned(
                  left: 50,
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
                  top: 225,
                  child: Container(
                    height: 50,
                    width: 180,
                    decoration: BoxDecoration(
                        color: Colors.green.shade400,
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
                Positioned(
                  left: 225,
                  top: 20,
                  child: Container(
                    height: 150,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.yellow.shade400,
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
                  right: 215,
                  bottom: 150,
                  child: Container(
                    height: 150,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.purple,
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

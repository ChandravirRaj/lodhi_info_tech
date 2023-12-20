import 'package:flutter/material.dart';

class MyContainer extends StatefulWidget {
  final String title;

  const MyContainer({super.key, required this.title});

  @override
  State<StatefulWidget> createState() {
    return _MyContainer();
  }
}

class _MyContainer extends State<MyContainer> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
          color: Colors.cyan.shade50,
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10.0)),
                            color: Colors.blue.shade200,
                            border: Border.all(
                              width: 3,
                              color: Colors.blue,
                            )),
                        child: const Center(
                            child: Text(
                          "Decoration",
                          style: TextStyle(color: Colors.yellow, fontSize: 20),
                        )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.green.shade300,
                          border: Border(
                            top: BorderSide(
                                color: Colors.yellow.shade100, width: 5),
                            left: BorderSide(
                                color: Colors.yellow.shade500, width: 10),
                            bottom: BorderSide(
                                color: Colors.purple.shade300, width: 5),
                            right: BorderSide(
                                color: Colors.brown.shade200, width: 10),
                          ),
                        ),
                        child: const Center(
                            child: Text(
                          "Shekhar",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            color: Colors.brown.shade300,
                            shape: BoxShape.circle,
                            border: Border.all(width: 3, color: Colors.black54),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black38,
                                  blurRadius: 10.0,
                                  spreadRadius: 10.0),
                            ]),
                        child: const Center(
                            child: Text(
                          "BD Circle",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            color: Colors.brown.shade300,
                            shape: BoxShape.rectangle,
                            border: Border.all(width: 3, color: Colors.black54),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black38,
                                  blurRadius: 10.0,
                                  spreadRadius: 10.0),
                            ]),
                        child: const Center(
                            child: Text(
                          "Pranshu",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            color: Colors.brown.shade300,
                            shape: BoxShape.rectangle,
                            border: Border.all(width: 3, color: Colors.black54),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.elliptical(30, 30),
                                bottomRight: Radius.elliptical(30, 30)),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black38,
                                  blurRadius: 10.0,
                                  spreadRadius: 10.0),
                            ]),
                        child: const Center(
                            child: Text(
                          "Gajensra",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            color: Colors.purple.shade100,
                            shape: BoxShape.rectangle,
                            border: Border.all(width: 3, color: Colors.black54),
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.elliptical(30, 30),
                                bottomLeft: Radius.elliptical(30, 30)),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black38,
                                  blurRadius: 10.0,
                                  spreadRadius: 10.0),
                            ]),
                        child: const Center(
                            child: Text(
                          "Yeshveer",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.rectangle,
                            border: Border.all(width: 3, color: Colors.black54),
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.elliptical(30, 30),
                                topLeft: Radius.elliptical(30, 30)),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black38,
                                  blurRadius: 10.0,
                                  spreadRadius: 10.0),
                            ]),
                        child: const Center(
                            child: Text(
                          "Jitendra",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.rectangle,
                            border: Border.all(width: 3, color: Colors.black54),
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.elliptical(30, 30),
                                bottomRight: Radius.elliptical(30, 30)),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black38,
                                  blurRadius: 10.0,
                                  spreadRadius: 10.0),
                            ]),
                        child: const Center(
                            child: Text(
                          "Narendra",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.purple,
                        child: const Center(
                            child: Text(
                          "Vishal",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.purple,
                        child: const Center(
                            child: Text(
                          "Pushpendra",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )),
    );
  }
}

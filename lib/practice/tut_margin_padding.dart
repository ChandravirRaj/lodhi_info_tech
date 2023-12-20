import 'package:flutter/material.dart';

class MyMarginPadding extends StatefulWidget {
  const MyMarginPadding({super.key});

  @override
  State<MyMarginPadding> createState() => _MyMarginPaddingState();
}

class _MyMarginPaddingState extends State<MyMarginPadding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Margin Padding"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              color: Colors.grey.shade300,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: const Text(
                      "This gray container is for marging",
                      style: TextStyle(
                          color: Colors.red,
                          fontStyle: FontStyle.italic,
                          fontSize: 20),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 100,
                    margin: const EdgeInsets.only(left: 20, right: 20, top: 40),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade300,
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      border: Border.all(
                        width: 3,
                        color: Colors.blue,
                      ),
                    ),
                    child: const Center(
                        child: Text(
                      "Check for Margin",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    )),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.brown.shade100,
              child: Column(
                children: [
                  Container(
                    color: Colors.amberAccent,
                    width: double.infinity,
                    child: const Padding(
                      padding: EdgeInsets.only(top: 20, left: 40, right: 80),
                      child: Text(
                        "This brown container is for padding",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.red,
                            fontStyle: FontStyle.italic,
                            fontSize: 20),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 100,
                    margin: const EdgeInsets.only(left: 20, right: 20, top: 40),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade300,
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      border: Border.all(
                        width: 3,
                        color: Colors.blue,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10,right: 40,top: 10,bottom: 20),
                      child:  Container(
                        color: Colors.green,
                          child: const Center(
                            child: Text(
                        "Check for Padding",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                          )),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

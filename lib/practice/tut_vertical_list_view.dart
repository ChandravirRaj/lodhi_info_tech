import 'package:flutter/material.dart';

class MyVerticalListView extends StatefulWidget {
  const MyVerticalListView({super.key});

  @override
  State<MyVerticalListView> createState() => _MyVerticalListViewState();
}

class _MyVerticalListViewState extends State<MyVerticalListView> {
  var arrNames =  List<String>.generate(10000, (i) => 'Item $i');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Vertical List View"),
      ),
      body: ListView.builder(
        itemCount: arrNames.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 10,bottom: 10,right: 10),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blueGrey.shade400,
                  shape: BoxShape.rectangle,
                  border: Border.all(width: 3, color: Colors.black54),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.elliptical(20, 20),
                      bottomRight: Radius.elliptical(20, 20)),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 3.0,
                        spreadRadius: 3.0),
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  arrNames[index],
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

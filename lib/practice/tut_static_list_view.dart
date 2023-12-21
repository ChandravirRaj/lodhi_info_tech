import 'package:flutter/material.dart';

class MyListTile extends StatefulWidget {
  const MyListTile({super.key});

  @override
  State<MyListTile> createState() => _MyListTileState();
}

class _MyListTileState extends State<MyListTile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Static List View"),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 5),
        child: ListView(
          itemExtent: 150,
          children: [
            Container(
              color: Colors.black38,
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              color: Colors.black38,
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              color: Colors.black38,
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              color: Colors.black38,
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              color: Colors.black38,
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              color: Colors.black38,
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              color: Colors.black38,
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              color: Colors.black38,
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              color: Colors.black38,
            ),

          ],
        ),
      ),
    );
  }
}

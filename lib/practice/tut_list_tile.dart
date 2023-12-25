import 'package:flutter/material.dart';

class MyListTiles2 extends StatefulWidget {
  const MyListTiles2({super.key});

  @override
  State<MyListTiles2> createState() => _MyListTiles2State();
}

class _MyListTiles2State extends State<MyListTiles2> {
  var arrNames = List<String>.generate(10000, (i) => 'Item $i');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Tile"),
      ),
      body: ListView.separated(
        itemBuilder: (contex, index) {
          return ListTile(
            leading: const CircleAvatar(
              foregroundImage: AssetImage('assets/images/ic_drawer_logo.png'),
              backgroundColor: Colors.brown,
            ),
            title: Text(
              arrNames[index],
              style: const TextStyle(color: Colors.blueAccent, fontSize: 25),
            ),
            subtitle: Text("Sub Title"),
            trailing: Icon(Icons.add_circle_outline_outlined),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.brown.shade400,
            height: 0,
            thickness: 3,
          );
        },
        itemCount: arrNames.length,
      ),
    );
  }
}

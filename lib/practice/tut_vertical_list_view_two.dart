import 'package:flutter/material.dart';

class MyVerticalListViewTwo extends StatefulWidget {
  const MyVerticalListViewTwo({super.key});

  @override
  State<MyVerticalListViewTwo> createState() => _MyVerticalListViewTwoState();
}

class _MyVerticalListViewTwoState extends State<MyVerticalListViewTwo> {
  var arrNames = List<String>.generate(10000, (i) => 'Item $i');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Vertical List View"),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.brown.shade400,
          );
        },
        itemCount: arrNames.length,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.brown.shade300,
                        shape: BoxShape.circle,
                        border: Border.all(width: 3, color: Colors.black54),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black38,
                              blurRadius: 3.0,
                              spreadRadius: 3.0),
                        ]),
                    child: const Icon(
                      Icons.manage_accounts,
                      color: Colors.white,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      arrNames[index],
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: 25),
                    ),
                    Text(
                      "description",
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: 25),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    showSnackBar(context, arrNames[index]);
                    // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: Container(
                    margin: const EdgeInsets.only(right: 10),
                    height: 40,
                    width: 40,
                    child: Icon(
                      Icons.add_circle_outline_outlined,
                      color: Colors.blueAccent.shade400,
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  void showSnackBar(BuildContext context, String itemName) {
    final snackBar = SnackBar(
      content: Text("$itemName Itme Click"),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {
          // Some code to undo the change.
        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

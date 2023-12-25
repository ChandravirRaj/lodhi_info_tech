import 'package:flutter/material.dart';
import 'package:lodhi_info_tech/utils/util.dart';

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
            height: 0,
            thickness: 3,
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
                      Icons.account_balance_sharp,
                      color: Colors.white,
                      size: 70,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      arrNames[index],
                      style: const TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: 25),
                    ),
                    const Text(
                      "description",
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: 25),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  height: 40,
                  width: 40,
                  child: IconButton(
                    color: Colors.blueAccent.shade400,
                    onPressed: () {
                      Util.showSnackBar(context, arrNames[index]);
                    },
                    icon: const Icon(Icons.add_circle_outline_outlined),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

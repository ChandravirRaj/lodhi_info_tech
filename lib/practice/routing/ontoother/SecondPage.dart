import 'package:flutter/material.dart';

import '../../../utils/util.dart';

class NavSecondPage extends StatefulWidget {
  const NavSecondPage({super.key});

  @override
  State<NavSecondPage> createState() => _NavSecondPageState();
}

class _NavSecondPageState extends State<NavSecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nav Second page"),
        // leading: ,
        automaticallyImplyLeading: false,

      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.lightGreen.shade100,
        child: Center(
          child: TextButton(
            onPressed: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) {
              //   return const NavSecondPage();
              // }));

              Navigator.pop(context);
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.lightGreen,
            ),
            child: Text(
              "Back to previous page",
              style: Util.regularTextStyle()
                  .copyWith(fontSize: 22, color: Colors.white),
            ),
          ),
        ),
      ),
      // bottomNavigationBar: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   children: [
      //     Column(
      //       children: [
      //         Container(
      //           height: 50,
      //           width: 50,
      //           color: Colors.lightGreen,
      //         )
      //       ],
      //     ),
      //     Column(
      //       children: [
      //         Container(
      //           height: 50,
      //           width: 50,
      //           color: Colors.lightGreen,
      //         )
      //       ],
      //     ),
      //     Column(
      //       children: [
      //         Container(
      //           height: 50,
      //           width: 50,
      //           color: Colors.lightGreen,
      //         )
      //       ],
      //     ),
      //   ],
      // ),
    );
  }
}

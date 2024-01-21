import 'package:flutter/material.dart';
import 'package:lodhi_info_tech/practice/routing/ontoother/SecondPage.dart';
import 'package:lodhi_info_tech/utils/util.dart';

class NavFirstPage extends StatefulWidget {
  const NavFirstPage({super.key});

  @override
  State<NavFirstPage> createState() => _NavFirstPageState();
}

class _NavFirstPageState extends State<NavFirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nav first page"),
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

              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const NavSecondPage()));
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.lightGreen,
            ),
            child: Text(
              "Move to Second Screen",
              style: Util.regularTextStyle()
                  .copyWith(fontSize: 22, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

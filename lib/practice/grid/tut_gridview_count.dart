import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lodhi_info_tech/utils/util.dart';

class GirdViewWithCount extends StatefulWidget {
  const GirdViewWithCount({super.key});

  @override
  State<GirdViewWithCount> createState() => _GirdViewWithCountState();
}

class _GirdViewWithCountState extends State<GirdViewWithCount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "GridView.count",
          style: Util.headerTitleTextStyle(textColor: Colors.white,fontSize: 25),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: GridView.count(
          crossAxisCount: 2,// it handle , how many columns you wants show in grid
          padding: EdgeInsets.all(10),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          // scrollDirection: Axis.horizontal, // you can give scroll direction from here
          // addRepaintBoundaries: false,
          // addSemanticIndexes: false,
          // semanticChildCount: 2,
          // dragStartBehavior: DragStartBehavior.start,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.red.shade200,
                shape: BoxShape.rectangle,
                borderRadius:
                const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.red.shade200,
                shape: BoxShape.rectangle,
                borderRadius:
                const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.red.shade200,
                shape: BoxShape.rectangle,
                borderRadius:
                const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.red.shade200,
                shape: BoxShape.rectangle,
                borderRadius:
                const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.red.shade200,
                shape: BoxShape.rectangle,
                borderRadius:
                const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.red.shade200,
                shape: BoxShape.rectangle,
                borderRadius:
                const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.red.shade200,
                shape: BoxShape.rectangle,
                borderRadius:
                const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.red.shade200,
                shape: BoxShape.rectangle,
                borderRadius:
                const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.red.shade200,
                shape: BoxShape.rectangle,
                borderRadius:
                const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.red.shade200,
                shape: BoxShape.rectangle,
                borderRadius:
                const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.red.shade200,
                shape: BoxShape.rectangle,
                borderRadius:
                const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

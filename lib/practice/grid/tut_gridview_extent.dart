import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lodhi_info_tech/utils/util.dart';

class GirdViewWithExtent extends StatefulWidget {
  const GirdViewWithExtent({super.key});

  @override
  State<GirdViewWithExtent> createState() => _GirdViewWithExtentState();
}

class _GirdViewWithExtentState extends State<GirdViewWithExtent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "GridView.extent",
          style: Util.headerTitleTextStyle(textColor: Colors.white,fontSize: 25),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: GridView.extent(
          maxCrossAxisExtent: 200,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          padding: EdgeInsets.all(10),

          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.green.shade200,
                shape: BoxShape.rectangle,
                borderRadius:
                const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.green.shade200,
                shape: BoxShape.rectangle,
                borderRadius:
                const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.green.shade200,
                shape: BoxShape.rectangle,
                borderRadius:
                const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.green.shade200,
                shape: BoxShape.rectangle,
                borderRadius:
                const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.green.shade200,
                shape: BoxShape.rectangle,
                borderRadius:
                const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.green.shade200,
                shape: BoxShape.rectangle,
                borderRadius:
                const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.green.shade200,
                shape: BoxShape.rectangle,
                borderRadius:
                const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.green.shade200,
                shape: BoxShape.rectangle,
                borderRadius:
                const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.green.shade200,
                shape: BoxShape.rectangle,
                borderRadius:
                const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.green.shade200,
                shape: BoxShape.rectangle,
                borderRadius:
                const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),

            Container(
              decoration: BoxDecoration(
                color: Colors.green.shade200,
                shape: BoxShape.rectangle,
                borderRadius:
                const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.green.shade200,
                shape: BoxShape.rectangle,
                borderRadius:
                const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.green.shade200,
                shape: BoxShape.rectangle,
                borderRadius:
                const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.green.shade200,
                shape: BoxShape.rectangle,
                borderRadius:
                const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.green.shade200,
                shape: BoxShape.rectangle,
                borderRadius:
                const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.green.shade200,
                shape: BoxShape.rectangle,
                borderRadius:
                const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.green.shade200,
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

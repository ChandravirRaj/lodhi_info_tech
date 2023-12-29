import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lodhi_info_tech/utils/util.dart';

class GirdViewWithCustom extends StatefulWidget {
  const GirdViewWithCustom({super.key});

  @override
  State<GirdViewWithCustom> createState() => _GirdViewWithCustomState();
}

class _GirdViewWithCustomState extends State<GirdViewWithCustom> {
  var arrNames = List<String>.generate(10000, (i) => 'Item $i');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "GridView.custom",
          style:
              Util.headerTitleTextStyle(textColor: Colors.white, fontSize: 25),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: GridView.custom(
            shrinkWrap: true,
            padding: const EdgeInsets.all(10),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                maxCrossAxisExtent: 200),
            childrenDelegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.green.shade200,
                  shape: BoxShape.rectangle,
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        arrNames[index],
                        style: Util.headerTitleTextStyle(
                            textColor: Colors.blueGrey.shade700, fontSize: 25),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "Description of ${arrNames[index]}",
                        style: Util.regularTextStyle(
                            textColor: Colors.blueGrey.shade700, fontSize: 21),
                      ),
                    ),
                  ],
                ),
              );
            }, childCount: arrNames.length)),
      ),
    );
  }
}

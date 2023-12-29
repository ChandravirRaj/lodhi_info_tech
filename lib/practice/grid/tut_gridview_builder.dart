import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lodhi_info_tech/utils/util.dart';

class GirdViewWithBuilder extends StatefulWidget {
  const GirdViewWithBuilder({super.key});

  @override
  State<GirdViewWithBuilder> createState() => _GirdViewWithBuilderState();
}

class _GirdViewWithBuilderState extends State<GirdViewWithBuilder> {
  var arrNames = List<String>.generate(10000, (i) => 'Item $i');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "GridView.builder",
          style:
              Util.headerTitleTextStyle(textColor: Colors.white, fontSize: 25),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: GridView.builder(
          padding: EdgeInsets.all(10),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10),

          // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //     crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
          
          
          // findChildIndexCallback: (key){
          //   final valueKey = key as ValueKey;
          //   final index = arrNames.indexWhere((item) => item == valueKey.value);
          //   Util.showSnackBar(context, arrNames[index]);
          // },
          
          
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: (){
                Util.showSnackBar(context,arrNames[index]);
              },
              child: Container(
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
              ),
            );
          },
          itemCount: arrNames.length,
        ),
      ),
    );
  }
}

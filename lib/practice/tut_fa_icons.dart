import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lodhi_info_tech/utils/util.dart';

class FAIcons extends StatefulWidget {
  const FAIcons({super.key});

  @override
  State<FAIcons> createState() => _FAIconsState();
}

class _FAIconsState extends State<FAIcons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Font Awesome Icons",
          style:
              Util.headerTitleTextStyle(textColor: Colors.white, fontSize: 25),
        ),
      ),
      body: Container(
        width: double.infinity,
        color: Colors.lightGreen.shade100,
        child: Center(
          child: Container(
            width: 300,
            height: 300,

            // color: Colors.grey,
            child: Stack(
              children: [
                Positioned(
                  left: 50,
                  top: 50,
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.red.shade400,
                        shape: BoxShape.rectangle,
                        border:
                        Border.all(width: 3, color: Colors.white),
                        borderRadius:
                        const BorderRadius.all(Radius.circular(10.0)),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5.0,
                              spreadRadius: 5.0),
                        ]),
                    child: Icon(FontAwesomeIcons.googlePay,color: Colors.white,size: 60,),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

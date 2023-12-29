import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lodhi_info_tech/practice/grid/tut_gridview_extent.dart';
import 'package:lodhi_info_tech/practice/grid/tut_gridview_builder.dart';
import 'package:lodhi_info_tech/utils/util.dart';

import 'grid/tut_gridview_count.dart';

class GridViewTypes extends StatefulWidget {
  const GridViewTypes({super.key});

  @override
  State<GridViewTypes> createState() => _GridViewTypesState();
}

class _GridViewTypesState extends State<GridViewTypes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.lightGreen.shade100,
        child: Column(
          children: [
            Container(
              height: 90,
              color: Colors.lightGreen,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "GridView Types",
                    style: Util.headerTitleTextStyle(
                        textColor: Colors.white, fontSize: 25),
                  ),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: InkWell(
                        onTap: () {
                          _moveToCount();
                        },
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            border: Border.all(width: 3, color: Colors.white),
                            borderRadius:
                            const BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  "GridView.count",
                                  style: Util.headerTitleTextStyle(
                                      textColor: Colors.black87, fontSize: 25),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text(
                                  "GridView.count, which creates a layout with a fixed number of tiles in the cross axis,",
                                  style: Util.regularTextStyle(
                                      textColor: Colors.black87, fontSize: 21),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'https://api.flutter.dev/flutter/widgets/GridView/GridView.count.html',
                                        style: Util.regularTextStyle(
                                            textColor: Colors.blue,
                                            fontSize: 20),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            // Util.launchURL("https://api.flutter.dev/flutter/widgets/GridView/GridView.count.html");
                                          },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: InkWell(
                        onTap: () {
                          _moveToExtent();
                        },
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            border: Border.all(width: 3, color: Colors.white),
                            borderRadius:
                            const BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  "GridView.extent",
                                  style: Util.headerTitleTextStyle(
                                      textColor: Colors.black87, fontSize: 25),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text(
                                  "GridView.extent, which creates a layout with tiles that have a maximum cross-axis extent",
                                  style: Util.regularTextStyle(
                                      textColor: Colors.black87, fontSize: 21),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'https://api.flutter.dev/flutter/widgets/GridView/GridView.extent.html',
                                        style: Util.regularTextStyle(
                                            textColor: Colors.blue,
                                            fontSize: 20),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            // Util.launchURL("https://api.flutter.dev/flutter/widgets/GridView/GridView.count.html");
                                          },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: InkWell(
                        onTap: () {
                          _moveToBuilder();
                        },
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            border: Border.all(width: 3, color: Colors.white),
                            borderRadius:
                            const BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  "GridView.builder",
                                  style: Util.headerTitleTextStyle(
                                      textColor: Colors.black87, fontSize: 25),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text(
                                  "To create a grid with a large (or infinite) number of children, use the GridView.builder constructor with either a SliverGridDelegateWithFixedCrossAxisCount or a SliverGridDelegateWithMaxCrossAxisExtent for the gridDelegate.",
                                  style: Util.regularTextStyle(
                                      textColor: Colors.black87, fontSize: 21),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'https://api.flutter.dev/flutter/widgets/GridView/GridView.builder.html',
                                        style: Util.regularTextStyle(
                                            textColor: Colors.blue,
                                            fontSize: 20),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            // Util.launchURL("https://api.flutter.dev/flutter/widgets/GridView/GridView.count.html");
                                          },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: InkWell(
                        onTap: () {

                        },
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            border: Border.all(width: 3, color: Colors.white),
                            borderRadius:
                            const BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  "GridView.custom",
                                  style: Util.headerTitleTextStyle(
                                      textColor: Colors.black87, fontSize: 25),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text(
                                  "To use a custom SliverChildDelegate, use GridView.custom.",
                                  style: Util.regularTextStyle(
                                      textColor: Colors.black87, fontSize: 21),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'https://api.flutter.dev/flutter/widgets/GridView/GridView.custom.html',
                                        style: Util.regularTextStyle(
                                            textColor: Colors.blue,
                                            fontSize: 20),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            // Util.launchURL("https://api.flutter.dev/flutter/widgets/GridView/GridView.count.html");
                                          },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _moveToCount() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const GirdViewWithCount();
    }));
  }

  void _moveToExtent() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const GirdViewWithExtent();
    }));
  }

  void _moveToBuilder() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const GirdViewWithBuilder();
    }));
  }
}

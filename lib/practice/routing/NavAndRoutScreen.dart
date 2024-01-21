import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lodhi_info_tech/practice/routing/ontoother/FirstPage.dart';
import 'package:lodhi_info_tech/practice/routing/tabs.dart';
import 'package:lodhi_info_tech/utils/util.dart';
import 'package:url_launcher/link.dart';

import 'TabsWithTabcontroller.dart';

class NavAndRouting extends StatefulWidget {
  const NavAndRouting({super.key});

  @override
  State<NavAndRouting> createState() => _NavAndRoutingState();
}

class _NavAndRoutingState extends State<NavAndRouting> {
  var overview = 'https://docs.flutter.dev/ui/navigation';
  var tabs = 'https://docs.flutter.dev/cookbook/design/tabs';
  var navigationBasics = 'https://docs.flutter.dev/cookbook/navigation/navigation-basics';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation And Routing"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.green.shade100,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        "Navigation and Routing Overview",
                        style: Util.regularTextStyle(),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Center(
                          child: Link(
                            uri: Uri.parse(overview),
                            builder: (BuildContext context,
                                    FollowLink? followLink) =>
                                InkWell(
                                    onTap: followLink,
                                    child: Text(
                                      overview,
                                      style: Util.regularTextStyle()
                                          .copyWith(color: Colors.blue),
                                    )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.only(top: 20),
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            _moveToTabs();
                          },
                          child: Text(
                            "Add tabs to your app",
                            style: Util.headerTitleTextStyle().copyWith(fontSize: 25),
                          ),
                        ),
                        TextButton(
                          onPressed: () { Util.launchURL(tabs);},
                          child: Text(
                            tabs,
                            style: Util.regularTextStyle()
                                .copyWith(color: Colors.blue,fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.only(top: 20),
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            _moveToFirstPage();
                          },
                          child: Text(
                            "Navigate to a new screen and back",
                            style: Util.headerTitleTextStyle().copyWith(fontSize: 25),
                          ),
                        ),
                        TextButton(
                          onPressed: () { Util.launchURL(navigationBasics);},
                          child: Text(
                            navigationBasics,
                            style: Util.regularTextStyle()
                                .copyWith(color: Colors.blue,fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _moveToTabs() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const MyTabs();
    }));
  }

  void _moveToFirstPage() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const NavFirstPage();
    }));
  }
}

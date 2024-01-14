import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lodhi_info_tech/practice/routing/CustomeTabDesign.dart';
import 'package:lodhi_info_tech/practice/routing/TabsWithTabcontroller.dart';
import 'package:lodhi_info_tech/utils/util.dart';

class MyTabs extends StatefulWidget {
  const MyTabs({super.key});

  @override
  State<MyTabs> createState() => _MyTabsState();
}

class _MyTabsState extends State<MyTabs> with TickerProviderStateMixin {

  TabController? _controller;

  @override
  void initState() {
    _controller = TabController(length: 3, vsync: this)..addListener(() {

    });
    super.initState();
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      // animationDuration: const Duration(microseconds: 1000),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tabs Sample",style: Util.headerTitleTextStyle().copyWith(color: Colors.white),),
          bottom: TabBar(
            controller: _controller,
            unselectedLabelColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            // isScrollable: true,
            // automaticIndicatorColorAdjustment: true,
            dividerColor:Colors.grey,
            dividerHeight: 3.0,
            indicatorColor: Colors.purple,
            indicatorWeight: 3,
            // indicator: BoxDecoration(
            //     color: Colors.lightBlueAccent,
            //     shape: BoxShape.rectangle,
            //     borderRadius: const BorderRadius.all(Radius.circular(30.0)),
            // ),
            tabs: [
              Tab(icon: Icon(Icons.directions_car,size: 30,)),
              Tab(icon: Icon(Icons.directions_transit,size: 30)),
              Tab(icon: Icon(Icons.directions_bike,size: 30)),
            ],
          ),
        ),
        body: TabBarView(
          controller: _controller,
          // clipBehavior: Clip.antiAlias,
          // dragStartBehavior: DragStartBehavior.down,
          children: [
            const TabsWithController(),
            const CustomTabsDesign(),
            Container(
              color: Colors.blue.shade100,
            ),

          ],
        ),
      ),
    );
  }
}

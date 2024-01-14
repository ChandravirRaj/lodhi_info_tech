import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lodhi_info_tech/utils/util.dart';

class TabsWithController extends StatefulWidget {
  const TabsWithController({super.key});

  @override
  State<TabsWithController> createState() => _TabsWithControllerState();
}

class _TabsWithControllerState extends State<TabsWithController>
    with SingleTickerProviderStateMixin {
  var _activeTabIndex = 0;
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      initialIndex: 0,
      length: 3,
      vsync: this,
    );
    tabController.animation?.addListener(_setActiveTabIndex);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: Colors.blueGrey.shade500,
              margin: EdgeInsets.only(top: 50),
              child: TabBar(
                controller: tabController,
                // unselectedLabelColor: Colors.yellow,
                indicatorSize: TabBarIndicatorSize.tab,
                dividerColor: Colors.white,
                dividerHeight: 3.0,
                indicatorColor: Colors.yellow,
                indicatorWeight: 3,
                onTap: (index) {
                  _activeTabIndex = index;
                },
                tabs: [
                  Tab(
                      icon: Icon(Icons.sailing_sharp,
                          color: _activeTabIndex == 0
                              ? Colors.yellow
                              : Colors.white),
                      child: Text(
                        'Sale',
                        style: TextStyle(
                            color: _activeTabIndex == 0
                                ? Colors.yellow
                                : Colors.white),
                      )),
                  Tab(
                      icon: Icon(Icons.g_translate_sharp,
                          color: _activeTabIndex == 1
                              ? Colors.yellow
                              : Colors.white),
                      child: Text(
                        'Latest',
                        style: TextStyle(
                            color: _activeTabIndex == 1
                                ? Colors.yellow
                                : Colors.white),
                      )),
                  Tab(
                      icon: Icon(Icons.ac_unit,
                          color: _activeTabIndex == 2
                              ? Colors.yellow
                              : Colors.white),
                      child: Text(
                        'Popular',
                        style: TextStyle(
                            color: _activeTabIndex == 2
                                ? Colors.yellow
                                : Colors.white),
                      )),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                // clipBehavior: Clip.antiAlias,
                // dragStartBehavior: DragStartBehavior.down,
                children: [
                  Container(
                    color: Colors.yellow.shade100,
                  ),
                  Container(
                    color: Colors.yellow.shade200,
                  ),
                  Container(
                    color: Colors.yellow.shade300,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void _setActiveTabIndex() {
    if (tabController.indexIsChanging) {
      setState(() {
        _activeTabIndex = tabController.index;
      });
    }
  }

  @override
  void dispose() {
    tabController.removeListener(_setActiveTabIndex);
    tabController.dispose();
    super.dispose();
  }
}

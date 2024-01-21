import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lodhi_info_tech/utils/util.dart';

class CustomTabsDesign extends StatefulWidget {
  const CustomTabsDesign({super.key});

  @override
  State<CustomTabsDesign> createState() => _CustomTabsDesignState();
}

class _CustomTabsDesignState extends State<CustomTabsDesign>
    with SingleTickerProviderStateMixin {
  var _activeTabIndex = 0;
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      initialIndex: 0,
      length: 8,
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
              height: 40,
              margin: EdgeInsets.only(top: 50),
              child: TabBar(
                controller: tabController,
                // unselectedLabelColor: Colors.yellow,
                indicatorSize: TabBarIndicatorSize.tab,
                // dividerColor: Colors.white,
                // dividerHeight: 3.0,
                indicatorColor: Colors.yellow,
                // indicatorWeight: 3,
                isScrollable: true,
                indicator: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                ),
                onTap: (index) {
                  _activeTabIndex = index;
                },
                tabs: [
                  Tab(
                      child: Text(
                        'Sale',
                        style: TextStyle(
                            color: _activeTabIndex == 0
                                ? Colors.yellow
                                : Colors.white),
                      )),
                  Tab(
                      child: Text(
                        'Latest',
                        style: TextStyle(
                            color: _activeTabIndex == 1
                                ? Colors.yellow
                                : Colors.white),
                      )),
                  Tab(
                      child: Text(
                        'Popular',
                        style: TextStyle(
                            color: _activeTabIndex == 2
                                ? Colors.yellow
                                : Colors.white),
                      )),
                  Tab(
                      child: Text(
                        'Images',
                        style: TextStyle(
                            color: _activeTabIndex == 3
                                ? Colors.yellow
                                : Colors.white),
                      )),
                  Tab(
                      child: Text(
                        'Videos',
                        style: TextStyle(
                            color: _activeTabIndex == 4
                                ? Colors.yellow
                                : Colors.white),
                      )),
                  Tab(
                      child: Text(
                        'Text',
                        style: TextStyle(
                            color: _activeTabIndex == 5
                                ? Colors.yellow
                                : Colors.white),
                      )),
                  Tab(
                      child: Text(
                        'Char',
                        style: TextStyle(
                            color: _activeTabIndex == 6
                                ? Colors.yellow
                                : Colors.white),
                      )),
                  Tab(
                      child: Text(
                        'Boolean',
                        style: TextStyle(
                            color: _activeTabIndex == 7
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
                  Container(
                    color: Colors.yellow.shade300,
                  ),
                  Container(
                    color: Colors.yellow.shade300,
                  ),
                  Container(
                    color: Colors.yellow.shade300,
                  ),
                  Container(
                    color: Colors.yellow.shade300,
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

import 'package:flutter/material.dart';
import 'package:lodhi_info_tech/practice/my_container.dart';
import 'package:lodhi_info_tech/practice/tut_custom_fonts.dart';
import 'package:lodhi_info_tech/practice/tut_custom_theme_style.dart';
import 'package:lodhi_info_tech/practice/tut_gridview_types.dart';
import 'package:lodhi_info_tech/practice/tut_static_list_view.dart';
import 'package:lodhi_info_tech/practice/tut_margin_padding.dart';
import 'package:lodhi_info_tech/practice/tut_text_input.dart';
import 'package:lodhi_info_tech/practice/tut_vertical_list_view.dart';
import 'package:lodhi_info_tech/practice/tut_vertical_list_view_two.dart';
import 'package:lodhi_info_tech/practice/tut_list_tile.dart';
import 'package:lodhi_info_tech/utils/util.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,style: Util.headerTitleTextStyle(textColor: Colors.white,fontSize: 23),),
        leading: const IconButton(onPressed: null, icon: Icon(Icons.menu)),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () => {_moveToContainerDecoration()},
                      child: Container(
                        width: 130,
                        height: 130,
                        margin: const EdgeInsets.only(left: 10, top: 20),
                        decoration: BoxDecoration(
                            color: Colors.red.shade400,
                            shape: BoxShape.rectangle,
                            border:
                                Border.all(width: 3, color: Colors.black54),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10.0)),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 5.0,
                                  spreadRadius: 5.0),
                            ]),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Container Decoration",
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.headline2,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () => {_moveToMarginPaddingScreen()},
                      child: Container(
                        height: 130,
                        margin:
                            const EdgeInsets.only(right: 10, top: 20, left: 10),
                        decoration: BoxDecoration(
                            color: Colors.red.shade400,
                            shape: BoxShape.rectangle,
                            border:
                            Border.all(width: 3, color: Colors.black54),
                            borderRadius:
                            const BorderRadius.all(Radius.circular(10.0)),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 5.0,
                                  spreadRadius: 5.0),
                            ]),
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          child: Padding(
                            padding: EdgeInsets.all(30.0),
                            child: Center(
                              child: Text(
                                "Padding And Margin",
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.headline2,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () => {_moveToListTileScreen()},
                      child: Container(
                        width: 130,
                        height: 130,
                        margin: const EdgeInsets.only(left: 10, top: 20),
                        decoration: BoxDecoration(
                            color: Colors.red.shade400,
                            shape: BoxShape.rectangle,
                            border:
                            Border.all(width: 3, color: Colors.black54),
                            borderRadius:
                            const BorderRadius.all(Radius.circular(10.0)),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 5.0,
                                  spreadRadius: 5.0),
                            ]),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Static List View",
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.headline2,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () => {_moveToVerticalListView()},
                      child: Container(
                        height: 130,
                        margin:
                            const EdgeInsets.only(right: 10, top: 20, left: 10),
                        decoration: BoxDecoration(
                            color: Colors.red.shade400,
                            shape: BoxShape.rectangle,
                            border:
                            Border.all(width: 3, color: Colors.black54),
                            borderRadius:
                            const BorderRadius.all(Radius.circular(10.0)),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 5.0,
                                  spreadRadius: 5.0),
                            ]),
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          child: Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Center(
                              child: Text(
                                "List View ListViewBuilder",
                                textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.headline2,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () => {_moveToVerticalListView2()},
                      child: Container(
                        width: 130,
                        height: 130,
                        margin: const EdgeInsets.only(left: 10, top: 20),
                        decoration: BoxDecoration(
                            color: Colors.red.shade400,
                            shape: BoxShape.rectangle,
                            border:
                            Border.all(width: 3, color: Colors.black54),
                            borderRadius:
                            const BorderRadius.all(Radius.circular(10.0)),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 5.0,
                                  spreadRadius: 5.0),
                            ]),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "List View with ListView.separated",
                              textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.headline2,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () => {_moveToMyListTile()},
                      child: Container(
                        height: 130,
                        margin:
                            const EdgeInsets.only(right: 10, top: 20, left: 10),
                        decoration: BoxDecoration(
                            color: Colors.red.shade400,
                            shape: BoxShape.rectangle,
                            border:
                            Border.all(width: 3, color: Colors.black54),
                            borderRadius:
                            const BorderRadius.all(Radius.circular(10.0)),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 5.0,
                                  spreadRadius: 5.0),
                            ]),
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Center(
                              child: Text(
                                "List View With List Tile",
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.headline2,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () => {_moveToCustomFontsScreen()},
                      child: Container(
                        width: 130,
                        height: 130,
                        margin: const EdgeInsets.only(left: 10, top: 20),
                        decoration: BoxDecoration(
                            color: Colors.red.shade400,
                            shape: BoxShape.rectangle,
                            border:
                            Border.all(width: 3, color: Colors.black54),
                            borderRadius:
                            const BorderRadius.all(Radius.circular(10.0)),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 5.0,
                                  spreadRadius: 5.0),
                            ]),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Add Custom Fonts",
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.headline2,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () => {_moveToCustomThemeStyleOneScreen()},
                      child: Container(
                        height: 130,
                        margin:
                            const EdgeInsets.only(right: 10, top: 20, left: 10),
                        decoration: BoxDecoration(
                            color: Colors.red.shade400,
                            shape: BoxShape.rectangle,
                            border:
                            Border.all(width: 3, color: Colors.black54),
                            borderRadius:
                            const BorderRadius.all(Radius.circular(10.0)),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 5.0,
                                  spreadRadius: 5.0),
                            ]),
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          child:  Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Center(
                              child: Text(
                                "Custom Text Theme Style",
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.headline2,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () => {_moveToMyTextInput()},
                      child: Container(
                        width: 130,
                        height: 130,
                        margin: const EdgeInsets.only(left: 10, top: 20),
                        decoration: BoxDecoration(
                            color: Colors.red.shade400,
                            shape: BoxShape.rectangle,
                            border:
                            Border.all(width: 3, color: Colors.black54),
                            borderRadius:
                            const BorderRadius.all(Radius.circular(10.0)),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 5.0,
                                  spreadRadius: 5.0),
                            ]),
                        child:  Center(
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "TextField",
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.headline2,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () => {_moveToMyGridView()},
                      child: Container(
                        height: 130,
                        margin:
                            const EdgeInsets.only(right: 10, top: 20, left: 10),
                        decoration: BoxDecoration(
                            color: Colors.red.shade400,
                            shape: BoxShape.rectangle,
                            border:
                            Border.all(width: 3, color: Colors.black54),
                            borderRadius:
                            const BorderRadius.all(Radius.circular(10.0)),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 5.0,
                                  spreadRadius: 5.0),
                            ]),
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          child:  Padding(
                            padding: EdgeInsets.all(30.0),
                            child: Center(
                              child: Text(
                                "Flutter GridView",
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.headline2,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () => {_moveToContainerDecoration()},
                      child: Container(
                        width: 130,
                        height: 130,
                        margin: const EdgeInsets.only(left: 10, top: 20),
                        decoration: BoxDecoration(
                            color: Colors.blueAccent.shade100,
                            shape: BoxShape.rectangle,
                            border:
                                Border.all(width: 3, color: Colors.blueAccent),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10.0)),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 5.0,
                                  spreadRadius: 5.0),
                            ]),
                        child: const Center(
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Container Decoration",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontStyle: FontStyle.italic),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () => {_moveToContainerDecoration()},
                      child: Container(
                        height: 130,
                        margin:
                            const EdgeInsets.only(right: 10, top: 20, left: 10),
                        decoration: BoxDecoration(
                            color: Colors.blueAccent.shade100,
                            shape: BoxShape.rectangle,
                            border:
                                Border.all(width: 3, color: Colors.blueAccent),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10.0)),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 5.0,
                                  spreadRadius: 5.0),
                            ]),
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          child: const Padding(
                            padding: EdgeInsets.all(30.0),
                            child: Center(
                              child: Text(
                                "Padding And Margin",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40,)
            ],
          ),
        ),
      ),
      /*floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),*/ // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  // here I am creating function
  int convertStringToNumber(String stringNumber) {
    return int.parse(stringNumber);
  }

  void _moveToContainerDecoration() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const MyContainer(title: "Containers Decorations");
    }));
  }

  void _moveToMarginPaddingScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const MyMarginPadding();
    }));
  }

  void _moveToListTileScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const MyListTile();
    }));
  }

  void _moveToVerticalListView() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const MyVerticalListView();
    }));
  }

  void _moveToVerticalListView2() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const MyVerticalListViewTwo();
    }));
  }

  void _moveToMyListTile() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const MyListTiles2();
    }));
  }

  void _moveToCustomFontsScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const CustomFonts();
    }));
  }

  void _moveToCustomThemeStyleOneScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const CustomThemeStyleOne();
    }));
  }

  void _moveToMyTextInput() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const MyTextInput();
    }));
  }

  void _moveToMyGridView() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const GridViewTypes();
    }));
  }
}

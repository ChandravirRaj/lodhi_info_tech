import 'package:flutter/material.dart';
import 'package:lodhi_info_tech/practice/my_container.dart';
import 'package:lodhi_info_tech/practice/tut_static_list_view.dart';
import 'package:lodhi_info_tech/practice/tut_margin_padding.dart';
import 'package:lodhi_info_tech/practice/tut_vertical_list_view.dart';
import 'package:lodhi_info_tech/practice/tut_vertical_list_view_two.dart';

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
        title: Text(widget.title),
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
                      onTap: () => {_moveToMarginPaddingScreen()},
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
                                    fontStyle: FontStyle.italic,),
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
                              "Static List View",
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
                      onTap: () => {_moveToVerticalListView()},
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
                            padding: EdgeInsets.all(20.0),
                            child: Center(
                              child: Text(
                                "List View ListViewBuilder",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontStyle: FontStyle.italic,),
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
                              "List View with ListView.separated",
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
                                  fontStyle: FontStyle.italic,),
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
                                  fontStyle: FontStyle.italic,),
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
                                  fontStyle: FontStyle.italic,),
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
                                  fontStyle: FontStyle.italic,),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
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
}

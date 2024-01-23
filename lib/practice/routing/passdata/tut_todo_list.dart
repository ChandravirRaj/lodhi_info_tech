import 'package:flutter/material.dart';
import 'package:lodhi_info_tech/practice/routing/passdata/model/todo_model.dart';
import 'package:lodhi_info_tech/practice/routing/passdata/tut_todo_detail.dart';
import 'package:lodhi_info_tech/practice/routing/passdata/tut_todo_detail_sec.dart';
import 'package:lodhi_info_tech/utils/util.dart';

class TodoListPage extends StatefulWidget {
  const TodoListPage({super.key});

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  final todos = List.generate(
    20,
    (i) => TodoModel(
      'Task $i',
      'A description of what needs to be done for Task $i',
    ),
  );

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TodoList',
          style: Util.regularTextStyle(fontSize: 25, textColor: Colors.white),
        ),
      ),
      body: ListView.separated(
          separatorBuilder: (context, index) {
            return const Divider(
              color: Colors.white,
              height: 0,
              thickness: 2,
            );
          },
          itemCount: todos.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                // Navigate and pass data to the detail screen by Constructor

                // Navigator.push(context, MaterialPageRoute(builder: (context){
                //   return TodoDetailPage(model: todos[index],needValueBack: false,);
                // }));

                // Navigate and pass data to the detail screen by As Arguments
                // Navigator.push(context, MaterialPageRoute(
                //     builder: (context) => const TodoDetailPageSec(),
                //     settings: RouteSettings(arguments: todos[index])));
              },
              child: Container(
                width: double.infinity,
                color: Colors.lightGreen.shade100,
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        todos[index].taskTitle,
                        style: Util.regularTextStyle(
                            textColor: Colors.black, fontSize: 22),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // Navigate and pass data to the detail screen by As Arguments
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => const TodoDetailPageSec(),
                            settings: RouteSettings(arguments: todos[index])));
                      },
                      child: Container(
                        width: double.infinity,
                        margin: const EdgeInsets.only(top: 5),
                        child: Text(
                          todos[index].taskDesc+" ---->> pass data as argumnets",
                          style:
                              Util.regularTextStyle(textColor: Colors.black54),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return TodoDetailPage(
                            model: todos[index],
                            needValueBack: false,
                          );
                        }));
                      },
                      child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.only(top: 10, bottom: 5),
                          child: Text(
                            "Pass data next screen by constructor",
                            style:
                                Util.regularTextStyle(textColor: Colors.blue),
                          )),
                    ),
                    InkWell(
                      onTap: () {
                        _moveToDetailsScreenAndGetValuesBack(context, index);
                      },
                      child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.only(top: 5, bottom: 10),
                          child: Text(
                            "Click to get values back from next screen",
                            style:
                                Util.regularTextStyle(textColor: Colors.blue),
                          )),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }

  void _moveToDetailsScreenAndGetValuesBack(
      BuildContext context, int index) async {
    final result =
        await Navigator.push(context, MaterialPageRoute(builder: (context) {
      return TodoDetailPage(
        model: todos[index],
        needValueBack: true,
      );
    }));

    if (!mounted) return;

    // After the Selection Screen returns a result, hide any previous snackbars
    // and show the new result.
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text('$result')));
  }
}

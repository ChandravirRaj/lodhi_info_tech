import 'package:flutter/material.dart';
import 'package:lodhi_info_tech/practice/routing/passdata/model/todo_model.dart';
import 'package:lodhi_info_tech/utils/util.dart';

class TodoDetailPageSec extends StatefulWidget {
  const TodoDetailPageSec({super.key});

  @override
  State<TodoDetailPageSec> createState() => _TodoDetailPageSecState();
}

class _TodoDetailPageSecState extends State<TodoDetailPageSec> {


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    final todo = ModalRoute.of(context)!.settings.arguments as TodoModel;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TodoDetail Sec',
          style: Util.regularTextStyle(fontSize: 25, textColor: Colors.white),
        ),
      ),
      body: Container(
        color: Colors.lightGreen.shade100,
        padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: Text(
                todo.taskTitle,
                style: Util.regularTextStyle(
                    textColor: Colors.black, fontSize: 22),
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 5),
              child: Text(
                todo.taskDesc,
                style: Util.regularTextStyle(textColor: Colors.black54),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:lodhi_info_tech/practice/routing/passdata/model/todo_model.dart';
import 'package:lodhi_info_tech/utils/util.dart';

class TodoDetailPage extends StatefulWidget {
  const TodoDetailPage({super.key,required this.model});
  final TodoModel model;

  @override
  State<TodoDetailPage> createState() => _TodoDetailPageState();
}

class _TodoDetailPageState extends State<TodoDetailPage> {
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
          'TodoDetail',
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
                widget.model.taskTitle,
                style: Util.regularTextStyle(
                    textColor: Colors.black, fontSize: 22),
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 5),
              child: Text(
                widget.model.taskDesc,
                style: Util.regularTextStyle(textColor: Colors.black54),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

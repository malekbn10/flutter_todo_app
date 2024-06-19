import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/provider/taskmodel.dart';

class Listtasksview extends StatefulWidget {
  const Listtasksview({super.key});

  @override
  State<Listtasksview> createState() => _ListtasksviewState();
}

class _ListtasksviewState extends State<Listtasksview> {
  @override
  Widget build(BuildContext context) {
    return  Consumer<TaskModel>(
  builder: (context, model, child){
      return Scaffold(
        appBar: AppBar(
          title: Text("Tasks List"),
          
        ),
        body: ListView.builder(
          itemCount:model.todotasks.length ,
          itemBuilder: (BuildContext context, int index) { 
            return ListTile(
              title: Text(model.todotasks[index].title),
            );
         },
         
        ),
      );
  }
    );
  }
}
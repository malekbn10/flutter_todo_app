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
    return Consumer<TaskModel>(builder: (context, model, child) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Text("Tasks List"),
        ),
        body: ListView.builder(
          itemCount: model.todotasks.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                decoration:
                    BoxDecoration(
                      color: Color.fromARGB(255, 201, 201, 201),
                      border: Border.all(color: Color.fromARGB(255, 255, 255, 255)),
                      borderRadius: BorderRadius.circular(10)
                      ),
              
                child: CheckboxListTile(
                  title: Text(model.todotasks[index].title), 
                  subtitle: Text(model.todotasks[index].deadline.toString()),
                  value: model.todotasks[index].status,
                   onChanged: (bool? value) { 

                    model.markAsDone(index,value!);
                    print(model.todotasks[index].status);
                   },
                  controlAffinity: ListTileControlAffinity.leading,
                ),
              ),
            );
          },
        ),
      );
    });
  }
}

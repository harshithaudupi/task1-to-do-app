import 'package:flutter/material.dart';
import 'package:to_do_app/screens/background.dart';

class ToDoListScreen extends StatefulWidget {
  @override
  _ToDoListScreenState createState() => _ToDoListScreenState();
}

class _ToDoListScreenState extends State<ToDoListScreen> {
  List<String> tasks = [];
  TextEditingController _taskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To Do List'),
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
      ),
      body: Background(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _taskController,
                      decoration: InputDecoration(
                          labelText: 'Enter your task',
                          iconColor: Colors.white),
                    ),
                  ),
                  SizedBox(width: 12.0),
                  ElevatedButton(
                    onPressed: () {
                      _addTask(_taskController.text);
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                    ),
                    child: Text('ADD'), // Replace icon with text
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation:
                        10, // Set elevation to 0 to remove the default shadow
                    margin:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black, width: 1.0),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: ListTile(
                        title: Text(tasks[index]),
                        trailing: ElevatedButton(
                          onPressed: () {
                            _removeTask(index);
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.black),
                          ),
                          child: Text('REMOVE'), // Replace icon with text
                        )),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _addTask(String task) {
    if (task.isNotEmpty) {
      setState(() {
        tasks.add(task);
        _taskController.clear();
      });
    }
  }

  void _removeTask(int index) {
    setState(() {
      tasks.removeAt(index);
    });
  }
}

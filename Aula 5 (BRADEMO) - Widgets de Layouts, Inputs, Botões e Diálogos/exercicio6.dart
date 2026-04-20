import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Task {
  String title;
  bool done;

  Task(this.title, this.done);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TaskPage(),
    );
  }
}

class TaskPage extends StatefulWidget {
  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  List<Task> tasks = List.generate(
    5,
    (index) => Task("Task 2022-07-09 18:08:${30 + index}", false),
  );

  @override
  Widget build(BuildContext context) {
    int incomplete = tasks.where((t) => !t.done).length;

    return Scaffold(
      appBar: AppBar(
        title: Text("Kindacode.com"),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (_) => AlertDialog(
              title: Text("Info"),
              content: Text("Você está no App de Notas de Tarefas"),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text("OK"),
                )
              ],
            ),
          );
        },
        child: Icon(Icons.add),
      ),

      body: Column(
        children: [
          SizedBox(height: 10),

          ElevatedButton(
            onPressed: () {},
            child: Text("View Completed Tasks"),
          ),

          SizedBox(height: 10),

          Text("You have $incomplete uncompleted tasks"),

          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.amber[200],
                  margin: EdgeInsets.all(10),
                  child: ListTile(
                    title: Text(tasks[index].title),
                    trailing: Checkbox(
                      value: tasks[index].done,
                      onChanged: (value) {
                        setState(() {
                          tasks[index].done = value!;
                        });
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('todoBox'); // Box for storing tasks
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hive To-Do',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _taskController = TextEditingController();
  final Box _box = Hive.box('todoBox');

  void _addTask(String task) {
    if (task.trim().isEmpty) return;
    _box.add(task);
    _taskController.clear();
    setState(() {});
  }

  void _deleteTask(int index) {
    _box.deleteAt(index);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final tasks = _box.values.toList();

    return Scaffold(
      appBar: AppBar(title: Text('Hive To-Do')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _taskController,
                    decoration: InputDecoration(hintText: 'Enter task'),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () => _addTask(_taskController.text),
                )
              ],
            ),
          ),
          Expanded(
            child: tasks.isEmpty
                ? Center(child: Text('No tasks yet'))
                : ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (_, index) => ListTile(
                title: Text(tasks[index]),
                trailing: IconButton(
                  icon: Icon(Icons.delete, color: Colors.red),
                  onPressed: () => _deleteTask(index),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

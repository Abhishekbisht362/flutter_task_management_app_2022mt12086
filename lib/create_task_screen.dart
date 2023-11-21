// create_task_screen.dart
import 'package:flutter/material.dart';
import 'task_model.dart';
import 'task_service.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  void _addTask() async {
    final title = _titleController.text.trim();
    final description = _descriptionController.text.trim();

    if (title.isNotEmpty) {
      try {
        final task = Task(title: title, description: description);
        await TaskService.addTask(task);
        Navigator.pop(context);
      } catch (e) {
        print('Error adding task: $e');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Task'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(
                labelText: 'Title',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _descriptionController,
              decoration: InputDecoration(
                labelText: 'Description',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _addTask,
              child: Text('Add Task'),
            ),
          ],
        ),
      ),
    );
  }
}

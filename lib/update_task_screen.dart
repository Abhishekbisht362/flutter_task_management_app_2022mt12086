// update_task_screen.dart
import 'package:flutter/material.dart';
import 'task_model.dart';
import 'task_service.dart';

class EditTaskScreen extends StatefulWidget {
  final Task task;

  EditTaskScreen(this.task);

  @override
  _EditTaskScreenState createState() => _EditTaskScreenState();
}

class _EditTaskScreenState extends State<EditTaskScreen> {
  late TextEditingController _titleController;
  late TextEditingController _descriptionController;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController(text: widget.task.title);
    _descriptionController = TextEditingController(text: widget.task.description);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Task'),
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
              onPressed: _editTask,
              child: Text('Save Changes'),
            ),
          ],
        ),
      ),
    );
  }

  void _editTask() async {
    final updatedTitle = _titleController.text.trim();
    final updatedDescription = _descriptionController.text.trim();

    if (updatedTitle.isNotEmpty) {
      try {
        widget.task.title = updatedTitle;
        widget.task.description = updatedDescription;
        await TaskService.editTask(widget.task);
        Navigator.pop(context);
      } catch (e) {
        print('Error editing task: $e');
      }
    }
  }
}

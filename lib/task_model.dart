// task_model.dart
import 'package:parse_server_sdk/parse_server_sdk.dart';

class Task {
  String title;
  String description;
  String objectId;

  Task({
    required this.title,
    required this.description,
    this.objectId = '',
  });

  factory Task.fromParse(ParseObject parseObject) {
    return Task(
      title: parseObject.get('title') ?? '',
      description: parseObject.get('description') ?? '',
      objectId: parseObject.objectId ?? '',
    );
  }

  ParseObject toParse() {
    final parseObject = ParseObject('Task')
      ..set('title', title)
      ..set('description', description);

    if (objectId.isNotEmpty) {
      parseObject.objectId = objectId;
    }

    return parseObject;
  }
}

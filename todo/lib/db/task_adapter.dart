import 'package:hive/hive.dart';

import '../models/task.dart';

class TaskAdapter extends TypeAdapter<Task> {
  @override
  final typeId = 0; // Unique identifier for your type

  @override
  Task read(BinaryReader reader) {
    return Task(
      reader.readString(),
      reader.readBool(),
    );
  }

  @override
  void write(BinaryWriter writer, Task obj) {
    writer.writeString(obj.name);
    writer.writeBool(obj.done);
  }
}

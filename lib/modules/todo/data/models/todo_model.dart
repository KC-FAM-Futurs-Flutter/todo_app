import 'package:uuid/uuid.dart';

Uuid uuid = Uuid();

class TodoModel {
  final String id;
  final String desc;
  final bool completed;

  TodoModel({required this.desc, this.completed = false, required this.id});

  factory TodoModel.fromJson(Map<String, dynamic> json) {
    return TodoModel(
      id: json['id'],
      desc: json['desc'],
      completed: json['completed'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'desc': desc, 'completed': completed};
  }

  TodoModel copyWith({String? id, String? desc, bool? completed}) {
    return TodoModel(
      id: id ?? this.id,
      desc: desc ?? this.desc,
      completed: completed ?? this.completed,
    );
  }
}

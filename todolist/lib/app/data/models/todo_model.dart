import 'package:cloud_firestore/cloud_firestore.dart';

class Todo {
  String id;
  String title;
  String desc;
  bool isCompleted;
  Timestamp createdAt;

  Todo({
    required this.id,
    required this.title,
    this.desc = '',
    this.isCompleted = false,
    required this.createdAt,
  });

  factory Todo.fromMap(Map<String, dynamic> data, String id) {
    return Todo(
      id: id,
      title: data['title'],
      desc: data['desc'] ?? '',
      isCompleted: data['isCompleted'] ?? false,
      createdAt: (data['createdAt'] as Timestamp?) ?? Timestamp.now(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'desc': desc,
      'isCompleted': isCompleted,
      'createdAt': createdAt,
    };
  }
}
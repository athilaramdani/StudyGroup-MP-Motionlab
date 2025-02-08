import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/todo_model.dart';

class TodoRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Stream<List<Todo>> getTodos() {
    return _firestore
        .collection('todos')
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) {
        return Todo.fromMap(doc.data(), doc.id);
      }).toList();
    });
  }

  Future<void> addTodo(Todo todo) async {
    await _firestore.collection('todos').add(todo.toMap());
  }

  Future<void> updateTodo(Todo todo) async {
    await _firestore.collection('todos').doc(todo.id).update(todo.toMap());
  }

  Future<void> deleteTodo(String id) async {
    await _firestore.collection('todos').doc(id).delete();
  }
}
import 'package:get/get.dart';
import '../../../data/repositories/todo_repository.dart';
import '../../../data/models/todo_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomeController extends GetxController {
  final TodoRepository _todoRepository = TodoRepository();
  final todos = <Todo>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchTodos();
  }

  void fetchTodos() {
    _todoRepository.getTodos().listen((todosList) {
      print('Fetched todos: $todosList'); // Debug log
      todos.assignAll(todosList);
    });
  }

  void addTodo(String title) {
    final todo = Todo(
      id: '',
      title: title,
      createdAt: Timestamp.now(),
    );
    _todoRepository.addTodo(todo);
  }

  void toggleTodoCompletion(Todo todo) {
    todo.isCompleted = !todo.isCompleted;
    _todoRepository.updateTodo(todo);
  }

  void deleteTodo(String id) {
    _todoRepository.deleteTodo(id);
  }
}
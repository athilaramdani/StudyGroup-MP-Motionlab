import 'package:get/get.dart';
import '../../../data/repositories/todo_repository.dart';
import '../../../data/models/todo_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class HomeController extends GetxController {
  final TodoRepository _todoRepository = TodoRepository();
  final todos = <Todo>[].obs;
  final filteredTodos = <Todo>[].obs;

  // Simpan filter terakhir
  var lastFilterField = 'createdAt'.obs;
  var lastFilterOrder = 'asc'.obs;
  @override
  void onInit() {
    super.onInit();
    fetchTodos();
  }

  void fetchTodos() {
    _todoRepository.getTodos().listen((todosList) {
      todos.assignAll(todosList);
      // Gunakan filter terakhir setelah fetch ulang
      applyFilter(lastFilterField.value, lastFilterOrder.value);
    });
  }

  void addTodo(String title, String desc) {
    final todo = Todo(
      id: '',
      title: title,
      desc: desc,
      createdAt: Timestamp.now(),
    );
    _todoRepository.addTodo(todo);
  }

  void toggleTodoCompletion(Todo todo) {
    todo.isCompleted = !todo.isCompleted;
    _todoRepository.updateTodo(todo).then((_) {
      // Terapkan kembali filter terakhir setelah update
      applyFilter(lastFilterField.value, lastFilterOrder.value);
    });
  }

  void deleteTodo(String id) {
    _todoRepository.deleteTodo(id);
  }

  void applyFilter(String field, String order) {
    // Simpan filter terakhir
    lastFilterField.value = field;
    lastFilterOrder.value = order;

    List<Todo> sortedTodos = List.from(todos);

    sortedTodos.sort((a, b) {
      switch (field) {
        case 'title':
          return a.title.compareTo(b.title);
        case 'desc':
          return a.desc.compareTo(b.desc);
        case 'createdAt':
          return a.createdAt.compareTo(b.createdAt);
        case 'isCompleted':
          return a.isCompleted == b.isCompleted ? 0 : (a.isCompleted ? 1 : -1);
        default:
          return 0;
      }
    });

    if (order == 'desc') {
      sortedTodos = sortedTodos.reversed.toList();
    }

    filteredTodos.assignAll(sortedTodos);
  }
}

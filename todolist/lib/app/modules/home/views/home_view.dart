import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To-Do List'),
      ),
      body: Obx(() {
        if (controller.todos.isEmpty) {
          return const Center(child: Text('No todos found.'));
        }
        return ListView.builder(
          itemCount: controller.todos.length,
          itemBuilder: (context, index) {
            final todo = controller.todos[index];
            return ListTile(
              title: Text(todo.title),
              leading: Checkbox(
                value: todo.isCompleted,
                onChanged: (value) {
                  controller.toggleTodoCompletion(todo);
                },
              ),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  controller.deleteTodo(todo.id);
                },
              ),
            );
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddTodoDialog(context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void _showAddTodoDialog(BuildContext context) {
    final TextEditingController textController = TextEditingController();
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Add Todo'),
          content: TextField(
            controller: textController,
            decoration: const InputDecoration(hintText: 'Enter todo title'),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                if (textController.text.isNotEmpty) {
                  controller.addTodo(textController.text);
                  Navigator.pop(context);
                }
              },
              child: const Text('Add'),
            ),
          ],
        );
      },
    );
  }
}
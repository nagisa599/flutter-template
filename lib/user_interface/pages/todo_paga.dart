import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/usecase/todo/todo_usecase.dart';

import '../../../domain/todo/todo.dart';

class TodosPage extends ConsumerWidget {
  TodosPage({super.key});

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todos = ref.watch(findTodosUseCaseProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('やること'),
      ),
      body: switch (todos) {
        AsyncData(:final value) => ListView.builder(
            itemBuilder: (context, index) {
              if (index == 0) {
                return ListTile(
                  title: TextField(
                    controller: controller,
                    onSubmitted: (value) {
                      addTodo(ref, value);
                    },
                  ),
                  trailing: ElevatedButton(
                    onPressed: () {
                      addTodo(ref, controller.text);
                    },
                    child: const Text('保存'),
                  ),
                );
              }
              final todo = value[index - 1];
              // return ListTile(
              //   title: Text(todo.content),
              // );
              return Dismissible(
                key: UniqueKey(),
                onDismissed: (direction) {
                  deleteTodo(ref, todo); // 削除処理
                },
                child: ListTile(
                  title: Text(todo.content),
                ),
              );
            },
            itemCount: value.length + 1,
          ),
        AsyncError() => const Center(
            child: Text('読み込みエラー'),
          ),
        _ => const CircularProgressIndicator(),
      },
    );
  }

  void addTodo(WidgetRef ref, String value) {
    ref.read(addTodoUseCaseProvider(value));
    controller.clear();
  }

  void deleteTodo(WidgetRef ref, Todo todo) {
    ref.read(deleteTodoUseCaseProvider(todo));
  }
}

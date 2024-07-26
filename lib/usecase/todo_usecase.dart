import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/todo/todo.dart';
import '../../domain/todo/todo_repository.dart';

part 'todo_usecase.g.dart';

@riverpod
Future<List<Todo>> findTodosUseCase(FindTodosUseCaseRef ref) async {
  return ref.read(todosRepositoryProvider).findAll();
}

@riverpod
Future<void> addTodoUseCase(AddTodoUseCaseRef ref, String content) async {
  await ref.read(todosRepositoryProvider).add(Todo(content));
  ref.invalidate(findTodosUseCaseProvider);
}

@riverpod
Future<void> deleteTodoUseCase(DeleteTodoUseCaseRef ref, Todo todo) async {
  await ref.read(todosRepositoryProvider).delete(todo);
  ref.invalidate(findTodosUseCaseProvider);
}

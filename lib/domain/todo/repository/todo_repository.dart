import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../todo.dart';

export '../todo.dart';

abstract class TodoRepository<T> {
  Future<bool> add(T item);
  Future<bool> delete(T item);
  Future<List<T>> findAll();
  Future<bool> update(T item);
}

final todosRepositoryProvider =
    Provider<TodoRepository<Todo>>((_) => throw UnimplementedError());

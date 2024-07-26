import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/repository_interface.dart';
import '../../domain/todo/todo.dart';

export 'todo.dart';

@riverpod
final todosRepositoryProvider =
    Provider<Repository<Todo>>((_) => throw UnimplementedError());

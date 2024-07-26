import '../../domain/repository_interface.dart';
import '../../domain/todo/todo.dart';

// モック
class MockTodosRepository implements Repository<Todo> {
  @override
  Future<bool> add(Todo item) async {
    // スタブ
    return true;
  }

  @override
  Future<bool> delete(Todo item) async {
    // スタブ
    return true;
  }

  @override
  Future<List<Todo>> findAll() async {
    // スタブ
    return const [
      Todo("りんご"),
      Todo("バナナ"),
      Todo("メロン"),
      Todo("電池"),
    ];
  }

  @override
  Future<bool> update(Todo item) async {
    // スタブ
    return true;
  }
}

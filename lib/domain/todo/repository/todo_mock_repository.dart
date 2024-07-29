import '../repository/todo_repository.dart';

// モック
class MockTodosRepository implements TodoRepository<Todo> {
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
      Todo(content: 'りんご'),
      Todo(content: 'バナナ'),
      Todo(content: 'メロン'),
      Todo(content: '電池'),
    ];
  }

  @override
  Future<bool> update(Todo item) async {
    // スタブ
    return true;
  }
}

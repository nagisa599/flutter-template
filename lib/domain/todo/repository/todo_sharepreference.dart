import 'package:shared_preferences/shared_preferences.dart';
import '../repository/todo_repository.dart';

const sharedPreferencesKey = 'todos';

// 実際の実装
class SharedPreferencesTodosRepository implements TodoRepository<Todo> {
  @override
  Future<bool> add(Todo item) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final items =
        (await findAll()).map((item) => item.content).toList(growable: true);
    items.add(item.content);
    return await sharedPreferences.setStringList(sharedPreferencesKey, items);
  }

  @override
  Future<bool> delete(Todo item) async {
    // スタブ
    return true;
  }

  @override
  Future<List<Todo>> findAll() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences
            .getStringList(sharedPreferencesKey)
            ?.map((item) => Todo(content: item))
            .toList(growable: false) ??
        [];
  }

  @override
  Future<bool> update(Todo item) async {
    // スタブ
    return true;
  }
}

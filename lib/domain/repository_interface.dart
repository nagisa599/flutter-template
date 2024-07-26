abstract class Repository<T> {
  Future<bool> add(T item);
  Future<bool> delete(T item);
  Future<List<T>> findAll();
  Future<bool> update(T item);
}

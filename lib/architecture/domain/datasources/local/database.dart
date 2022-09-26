abstract class Database<U> {
  List<T> getAll<T>();
  T get<T>(String id, {T? defaultValue});
}

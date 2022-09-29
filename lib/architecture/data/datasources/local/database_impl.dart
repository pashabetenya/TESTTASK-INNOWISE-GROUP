import 'package:application/architecture/domain/datasources/local/database.dart';
import 'package:hive_flutter/hive_flutter.dart';

class DatabaseImpl implements Database {
  final Box box;

  DatabaseImpl({required this.box});

  @override
  List<T> getAll<T>() {
    try {
      final data = box.toMap().values;
      if (data.isEmpty) {
        throw 'it is error..';
      }

      return data.toList().cast<T>();
    } catch (_) {
      rethrow;
    }
  }

  @override
  T get<T>(String index, {T? defaultValue}) {
    try {
      final data = box.get(index, defaultValue: defaultValue);
      if (data == null) {
        throw 'it is error..';
      }
      return data;
    } catch (_) {
      rethrow;
    }
  }
}

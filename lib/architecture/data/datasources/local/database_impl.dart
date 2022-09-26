import 'package:application/architecture/common/exception.dart';
import 'package:application/architecture/domain/datasources/local/database.dart';
import 'package:hive/hive.dart';

class DatabaseImpl implements Database {
  final Box box;

  DatabaseImpl({required this.box});

  @override
  List<T> getAll<T>() {
    try {
      final data = box.toMap().values;
      if (data.isEmpty) {
        throw AppException.noRecords();
      }

      return data.toList().cast<T>();
    } catch (_) {
      rethrow;
    }
  }

  @override
  T get<T>(String id, {T? defaultValue}) {
    try {
      final data = box.get(id, defaultValue: defaultValue);
      if (data == null) {
        throw AppException.noRecords();
      }
      return data;
    } catch (_) {
      rethrow;
    }
  }
}

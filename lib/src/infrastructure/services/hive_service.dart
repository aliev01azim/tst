//конфигурация,настройка и работа с бд

// Package imports:
import 'package:hive_flutter/hive_flutter.dart';

// Project imports:
import '../statics/consts.dart';

class HiveService {
  static Future<void> init() async {
    await Hive.initFlutter();
    await Hive.openBox(Boxes.todos.name);
    // await clearBox(boxEnum: Boxes.todos);
  }

  static Future<void> putItem<T>(
      {required T item, required Boxes boxEnum, required dynamic key}) async {
    final openBox = await Hive.openBox(boxEnum.name);
    await openBox.put(key, item);
  }

  static Future<void> clearBox({required Boxes boxEnum, dynamic key}) async {
    final openBox = await Hive.openBox(boxEnum.name);
    if (key != null) {
      await openBox.delete(key);
    } else {
      await openBox.clear();
    }
  }

  static Future<T> getItem<T>(
      {required Boxes boxEnum, required dynamic key}) async {
    final openBox = await Hive.openBox(boxEnum.name);
    return openBox.get(key) as T;
  }
}

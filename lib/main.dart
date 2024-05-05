// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'di.dart';
import 'src/infrastructure/services/hive_service.dart';
import 'src/infrastructure/utils/helpers.dart';
import 'src/app.dart';

// hive не внутри di из-за принципа разделения ответственностей
//всё же HiveService больше про работу с данными,а di про зависимости
void main() async {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await HiveService.init();
    await di.initDependencies();
    runApp(const App());
  }, (exc, stackTrace) {
    logger.e(exc, stackTrace: stackTrace);
  });
}

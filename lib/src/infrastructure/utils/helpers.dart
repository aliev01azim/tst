//вспомогательные классы и утилиты, которые
//могут использоваться в различных частях приложения

// Package imports:
import 'package:get/get.dart';

import '../statics/consts.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

final logger = Logger(
  printer: PrettyPrinter(methodCount: 5, lineLength: 200),
);
final internetSnackBar = GetSnackBar(
  messageText: Center(
    child: Text(
      'no_internet_connection'.tr,
      style: const TextStyle(color: Colors.white),
    ),
  ),
  backgroundColor: AppColors.red,
  isDismissible: true,
  snackStyle: SnackStyle.GROUNDED,
  duration: const Duration(minutes: 60),
);


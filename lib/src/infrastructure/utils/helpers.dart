//вспомогательные классы и утилиты, которые
//могут использоваться в различных частях приложения

// Package imports:
import '../statics/consts.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

final logger = Logger(
  printer: PrettyPrinter(methodCount: 5, lineLength: 200),
);

internetSnackBar(BuildContext context) => SnackBar(
      content: Center(child: Text(AppLocalizations.of(context)!.no_internet_connection,style: const TextStyle(color: Colors.white),)),
      backgroundColor: AppColors.red,
      behavior: SnackBarBehavior.fixed,
      duration: const Duration(minutes: 60),
    );

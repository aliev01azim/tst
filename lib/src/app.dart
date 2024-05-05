// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'common/widgets/unfocus.dart';
import 'infrastructure/routes/routes.dart';
import 'infrastructure/services/network/core.dart';
import 'infrastructure/statics/bindings.dart';
import 'infrastructure/statics/consts.dart';
import 'infrastructure/statics/theme.dart';
import 'localization/translations.dart';
import 'modules/auth/domain/usecases/token_usecase.dart';

class App extends StatefulWidget {
  const App({
    super.key,
  });

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App>
    with ConnectionAwareMixin<App>, DefaultConnectionAwareStateMixin<App>
    implements RestartableStateInterface {
  @override
  Widget buildPage(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyAppTheme.darkTheme,
      initialRoute: Get.find<TokenUseCase>().isInitiallyAuthed
          ? GetPages.home
          : GetPages.auth,
      builder: (context, child) => Unfocus(child: child),
      initialBinding: AuthBinding(),
      unknownRoute: Get.find<AppRouter>().unknowRoute,
      getPages: Get.find<AppRouter>().getPages,
      darkTheme: MyAppTheme.darkTheme,
      localizationsDelegates: localizationsDelegates,
      supportedLocales: supportedLocales,
      fallbackLocale: Get.deviceLocale,
      translations: AppTranslations(),
      locale: getLanguageOfKey('ru'), //prefs.getString('language')
      onGenerateTitle: (BuildContext context) => 'appTitle'.tr,
    );
  }
}

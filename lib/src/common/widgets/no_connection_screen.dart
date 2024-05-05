// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

// Project imports:
import '../../infrastructure/statics/styles.dart';

class NoConnectionScreen extends StatelessWidget {
  const NoConnectionScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      onPopInvoked: (_) {
        SystemNavigator.pop(animated: true);
      },
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('no_internet_connection'.tr),
              Text(
                '- _ -',
                style: TextStyles.textTitle(fontSize: 100),
              )
            ],
          ),
        ),
      ),
    );
  }
}

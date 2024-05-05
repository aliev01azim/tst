import 'package:flutter/material.dart';

import '../../infrastructure/statics/styles.dart';

class UnknownRoutePage extends StatelessWidget {
  const UnknownRoutePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Page not found',
          style: TextStyles.textGrey(fontSize: 100),
        ),
      ),
    );
  }
}

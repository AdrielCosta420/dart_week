import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'src/modules/core/ui/ui_dependecies.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute('/login');
    return MaterialApp.router(
      title: '',
      theme: ThemeConfig.theme,
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}

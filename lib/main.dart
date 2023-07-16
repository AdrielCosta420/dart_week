import 'package:dw10_modular/src/core/env/env.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app_module.dart';
import 'app_widget.dart';

Future<void> main() async {
  //iniciar o flutter antes mesmo de inicilizar o projeto
  WidgetsFlutterBinding.ensureInitialized();
  await Env.instance.load();
  return runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}

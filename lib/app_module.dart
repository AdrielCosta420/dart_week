import 'package:dw10_modular/src/modules/login/login_module.dart';

import 'package:flutter_modular/flutter_modular.dart';



class AppModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/login', module: LoginModule()),
      ];
}

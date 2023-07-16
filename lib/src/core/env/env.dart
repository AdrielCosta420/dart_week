import 'package:flutter_dotenv/flutter_dotenv.dart';

class Env {
  static Env? _instance;
  // Avoid self instance
  Env._();
  static Env get instance {
    _instance ??= Env._();
    return _instance!;
  }

  Future<void> load() => dotenv.load();

  //buscar a chave,q pode ou nao, existir
  String? maybeGet(String key) => dotenv.maybeGet(key);

  String get(String key) => dotenv.get(key);
}

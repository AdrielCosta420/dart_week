// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'storage.dart';

class SessionStorageImpl extends Storage {
  @override
  String getData(String key) => window.sessionStorage[key] ?? '';

  @override
  void setData(String key, String value) =>
      window.sessionStorage[key] = value;

  @override
  void clean() => window.sessionStorage.clear();
}

import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:dw10_modular/src/core/exceptions/unathourized_exception.dart';
import 'package:dw10_modular/src/core/rest_client/custom_dio.dart';
import 'package:dw10_modular/src/models/auth_model.dart';
import 'package:dw10_modular/src/repositories/auth/auth_repository.dart';

import '../../core/exceptions/repository_exception.dart';

class AuthRepositoryImpl implements AuthRepository {
  final CustomDio _dio;
  AuthRepositoryImpl(this._dio);

  @override
  Future<AuthModel> login(String email, String password) async {
    try {
      final result = await _dio.unauth().post('/auth', data: {
        'email': email,
        'pasword': password,
        'admin': true,
      });

      return AuthModel.fromMap(result.data);
      // ignore: deprecated_member_use
    } on DioError catch (e, s) {
      if (e.response?.statusCode == 403) {
        log('Login ou senha inválidas', error: e, stackTrace: s);
        throw UnathourizedException();
      }
    log('Erro ao realizar login', error: e, stackTrace: s);
        throw RepositoryException(message: 'Erro ao realizar login');

    }
  }
}

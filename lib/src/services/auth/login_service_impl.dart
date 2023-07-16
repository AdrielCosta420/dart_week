import 'package:dw10_modular/src/core/shared/constants/constants.dart';
import 'package:dw10_modular/src/core/storage/storage.dart';
import 'package:dw10_modular/src/repositories/auth/auth_repository.dart';
import 'package:dw10_modular/src/services/auth/login_service.dart';

class LoginServiceImpl implements LoginService {
  final AuthRepository _authRepository;
  final Storage _storage;

  LoginServiceImpl(this._authRepository, this._storage);

  @override
  Future<void> execute(String email, String password) async {
    final authModel = await _authRepository.login(
      email,
      password,
    );
    _storage.setData(
      SessionStorageKeys.acessToken.key,
      authModel.acessToken,
    );
  }
}

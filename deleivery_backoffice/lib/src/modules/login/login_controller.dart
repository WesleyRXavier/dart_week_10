import 'dart:developer';

import 'package:mobx/mobx.dart';

import '../../core/exceptions/unauthorized_exception.dart';
import '../../services/auth/login_service.dart';
part 'login_controller.g.dart';

enum LoginStateStatus {
  initial,
  loading,
  success,
  error;
}

class LoginController = LoginControllerBase with _$LoginController;

abstract class LoginControllerBase with Store {
  final LoginService _loginService;

  @readonly
  String? _errorMessage;

  @readonly
  var _loginStatus = LoginStateStatus.initial;

  LoginControllerBase(this._loginService);

  Future<void> login(String email, String password) async {
    try {
      _loginStatus = LoginStateStatus.loading;

      print('teste');
      await _loginService.execute(email, password);

      print('teste1');
      _loginStatus = LoginStateStatus.success;
    } on UnauthorizedException {
      _errorMessage = 'Login ou Senha invalido"';
      _loginStatus = LoginStateStatus.error;
    } catch (e, s) {
      log('Erro ao realizar login', error: e, stackTrace: s);
      _errorMessage = 'Tente novamente mais tarde';
      _loginStatus = LoginStateStatus.error;
    }
  }
}

import 'package:flutter/material.dart';

class AuthModel with ChangeNotifier {
  String _email = '';
  String _password = '';
  String _message = '';
  String _confirmPassword = '';

  String get email => _email;
  String get password => _password;
  String get message => _message;
  String get confirmPassword => _confirmPassword;

  void setEmail(String email) {
    _email = email;
    notifyListeners();
  }

  void setPassword(String password) {
    _password = password;
    notifyListeners();
  }

 void setPasswordConfirm(String password) {
    _confirmPassword = confirmPassword;
    notifyListeners();
  }

  /* Login User */
  void login() {
    if (_email.isEmpty || _password.isEmpty) {
      _message = 'è obbligatia immettere le credenziali';
    } else if (_email == 'cardullo.lia@gmail.com' &&
        _password == 'AgataSciuto') {
      _message = 'Accesso eseguito';
    } else {
      _message = 'Password Errata';
    }
    notifyListeners();
  }

  /* Registration User */
  void registration() {
    if (_email.isEmpty || _password.isEmpty || _confirmPassword.isEmpty) {
      _message = 'è obbligatia immettere le credenziali';
    } else {
      _message = 'Registration successful';
    }
    notifyListeners();
  }
}

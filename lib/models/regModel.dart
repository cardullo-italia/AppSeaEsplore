import 'package:flutter/material.dart';

class RegistrationAuth with ChangeNotifier {
  String _email = '';
  String _password = '';
  String _confirmPassword = '';
  String _message = '';

  String get email => _email;
  String get password => _password;
  String get confirmPassword => _confirmPassword;
  String get message => _message;

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

  void registration() {
    if (_email.isEmpty || _password.isEmpty || _confirmPassword.isEmpty) {
      _message = 'è obbligatia immettere le credenziali';
    } else {
      _message = 'Registration successful';
    }
    notifyListeners();
  }
}

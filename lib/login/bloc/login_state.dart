part of 'login_bloc.dart';

// @immutable
abstract class LoginState {}

class LoginStateChanged {
  String? username;
  String? password;

  LoginStateChanged({this.username = "", this.password = ""});
}

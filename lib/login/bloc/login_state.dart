part of 'login_bloc.dart';

// @immutable
// abstract class LoginState {}

class LoginState {
  final String username;
  final String password;

  LoginState({this.username = "", this.password = ""});

  LoginState copyWith({String? username, String? password}) {
    return LoginState(
        username: username ?? this.username,
        password: password ?? this.password);
  }
}

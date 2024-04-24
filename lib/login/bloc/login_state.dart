// part of 'login_bloc.dart';
import 'package:flutterday21/auth/form_submitted/form_submission_status.dart';
// @immutable
// abstract class LoginState {}



class LoginState{
  final String username;
  final String password;
  final FormSubmissionStatus formStatus;

  LoginState({this.formStatus = const InitialFormStatus(), this.username = "", this.password = ""});

  LoginState copyWith({String? username, String? password, FormSubmissionStatus? formSubmissionStatus}) {
    return LoginState(
        username: username ?? this.username,
        password: password ?? this.password, formStatus: formStatus ?? formStatus);
  }
}

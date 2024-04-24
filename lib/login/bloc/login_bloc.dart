import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutterday21/auth/form_submitted/form_submission_status.dart';
import 'package:flutterday21/login/bloc/login_state.dart';

part 'login_event.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState()) {
    // on<LoginEvent>((event, emit) {
    //   // TODO: implement event handler
    // });
  }

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is LoginUsernameChanged) {
      yield state.copyWith(username: event.username);
    } else if (event is LoginPasswordChanged) {
      yield state.copyWith(password: event.password);
    } else if (event is LoginSubmitted) {
      yield state.copyWith(formSubmissionStatus: FormSubmmiting());
    }
  }
}

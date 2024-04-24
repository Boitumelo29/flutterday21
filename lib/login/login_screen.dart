import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterday21/auth/form_submitted/auth_repo/auth_repo.dart';
import 'package:flutterday21/auth/form_submitted/form_submission_status.dart';
import 'package:flutterday21/login/bloc/login_bloc.dart';

// import 'package:flutterday21/login/bloc/login_event.dart';
import 'package:flutterday21/login/bloc/login_state.dart';

class LoginScreen extends StatelessWidget {
  final formKey = GlobalKey<FormState>();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider(
      create: (context) => LoginBloc(context.read()<AuthRepo>()),
      child: _loginForm(),
    ));
  }

  Widget _loginForm() {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [_usernameField(), _passwordsField(), loginButton()],
        ),
      ),
    );
  }

  Widget _passwordsField() {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return TextFormField(
          onChanged: (value) => context
              .read()<LoginBloc>()
              .add(LoginPasswordChanged(password: value)),
          obscureText: true,
          validator: (value) => null,
        );
      },
    );
  }

  Widget _usernameField() {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return TextFormField(
          onChanged: (value) => context
              .read()<LoginBloc>()
              .add(LoginUsernameChanged(username: value)),
          obscureText: false,
          validator: (value) => null,
        );
      },
    );
  }

  Widget loginButton() {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return state.formStatus is FormSubmmiting
            ? CircularProgressIndicator()
            : ElevatedButton(
                onPressed: () {
                  context.read<LoginBloc>().add(LoginSubmitted());
                },
                child: const Text("Login"));
      },
    );
  }
}

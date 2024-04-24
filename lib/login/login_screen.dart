import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(body: _loginForm());
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
    return TextFormField(
      obscureText: true,
      validator: (value) => null,
    );
  }

  Widget _usernameField() {
    return TextFormField(
      obscureText: false,
      validator: (value) => null,
    );
  }

  Widget loginButton() {
    return ElevatedButton(onPressed: () {}, child: const Text("Login"));
  }
}

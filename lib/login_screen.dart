import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [_usernameField(), _passwordsField(), loginButton()],
      ),
    );
  }

  Widget _passwordsField() {
    return TextFormField(
      obscureText: true,
    );
  }

  Widget _usernameField() {
    return TextFormField(
      obscureText: false,
    );
  }

  Widget loginButton() {
    return ElevatedButton(onPressed: () {}, child: Text("Login"));
  }
}

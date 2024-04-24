import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterday21/auth/form_submitted/auth_repo/auth_repo.dart';
import 'package:flutterday21/login/bloc/login_bloc.dart';
import 'package:flutterday21/login/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RepositoryProvider(
        create: (context) => AuthRepo(),
        child: LoginScreen(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ovesmart/presentation/pages/auth/loginScreen.dart';
import 'package:ovesmart/presentation/pages/splash.dart';
import 'package:bloc/bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        title: 'Flutter Demo',
        // onGenerateRoute: ,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SplashWidget(),
      );
  }
}

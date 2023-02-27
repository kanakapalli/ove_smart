import 'dart:async';

import 'package:flutter/material.dart';
import '../../injection_container.dart';
import 'auth/loginScreen.dart';

class SplashWidget extends StatefulWidget {
  const SplashWidget({Key? key}) : super(key: key);

  @override
  _SplashWidgetState createState() => _SplashWidgetState();
}

class _SplashWidgetState extends State<SplashWidget> {
  // late SplashModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    });
    // _model = createModel(context, () => SplashModel());
  }

  @override
  void dispose() {
    // _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Stack(
              children: [
                Align(
                  alignment: const AlignmentDirectional(0, 1.1),
                  child: Image.asset(
                    'assets/img/splashbottom.png',
                    width: double.infinity,
                    height: 164.2,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.19, -0.14),
                  child: Image.asset(
                    'assets/img/ovelogo.png',
                    width: 309.1,
                    height: 103.1,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

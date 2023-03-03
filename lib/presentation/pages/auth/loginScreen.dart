import 'package:flutter/material.dart';
import 'package:ovesmart/presentation/pages/mainscreen/homescreen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController textController1 = TextEditingController();
  TextEditingController textController2 = TextEditingController();

  final _unfocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 40, 0, 40),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'welcome Back',
                        style: TextStyle(fontSize: 24),
                      ),
                      Text(
                        'Login with email',
                        style: TextStyle(fontSize: 18),
                        // style: FlutterFlowTheme.of(context).bodyText1,,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              25, 0, 25, 0),
                          child: TextFormField(
                            controller: textController1,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'Email',
                              // hintStyle: FlutterFlowTheme.of(context).bodyText2,
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            // style: FlutterFlowTheme.of(context).bodyText1,
                            // validator: textController1Validator
                            //     .asValidator(context),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              25, 12, 25, 0),
                          child: TextFormField(
                            controller: textController2,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'Password',
                              // hintStyle: FlutterFlowTheme.of(context).bodyText2,
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            // style: FlutterFlowTheme.of(context).bodyText1,
                            // validator: _model.textController2Validator
                            //     .asValidator(context),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 0, 25, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                child: Text(
                                  'Forgot password?',
                                  // style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(25, 25, 25, 25),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: const Color(0xFF1FCEA4),
                        minimumSize: const Size(double.infinity, 55),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()),
                        );
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),

                    // TextButton(
                    //   onPressed: () {
                    //     print('Button pressed ...');
                    //   },
                    //   child: const Text("asdasd"),
                    //   // text: 'Button',
                    //   // options: FFButtonOptions(
                    //   //   width: double.infinity,
                    //   //   height: 40,
                    //   //   color: FlutterFlowTheme.of(context).primaryColor,
                    //   //   textStyle:
                    //   //       FlutterFlowTheme.of(context).subtitle2.override(
                    //   //             fontFamily: 'Poppins',
                    //   //             color: Colors.white,
                    //   //           ),
                    //   //   borderSide: BorderSide(
                    //   //     color: Colors.transparent,
                    //   //     width: 1,
                    //   //   ),
                    //   //   borderRadius: BorderRadius.circular(8),
                    //   // ),
                    // ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(25, 0, 25, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Container(
                            width: 100,
                            height: 1,
                            decoration: const BoxDecoration(
                              color: Color(0xA424273A),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                          child: Text(
                            'or continue with',
                            // style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: 100,
                            height: 1,
                            decoration: const BoxDecoration(
                              color: Color(0xA424273A),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              25, 0, 25, 0),
                          child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  minimumSize: const Size(double.infinity, 50),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  side: const BorderSide(
                                    color: Colors.grey,
                                  )),
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/svg/google.png',
                                    // color: Colors.grey,

                                    // semanticsLabel: 'Acme Logo'
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text('Google'),
                                ],
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              25, 8, 25, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 5, 0),
                                  child: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                          minimumSize:
                                              const Size(double.infinity, 50),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          side: const BorderSide(
                                            color: Colors.grey,
                                          )),
                                      onPressed: () {},
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/svg/facebook.png',
                                            // color: Colors.grey,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          const Text('Facebook'),
                                        ],
                                      )),
                                  // FFButtonWidget(
                                  //   onPressed: () {
                                  //     print('Button pressed ...');
                                  //   },
                                  //   text: 'Button',
                                  //   options: FFButtonOptions(
                                  //     width: 130,
                                  //     height: 40,
                                  //     color: FlutterFlowTheme.of(context)
                                  //         .primaryBackground,
                                  //     textStyle: FlutterFlowTheme.of(context)
                                  //         .subtitle2
                                  //         .override(
                                  //           fontFamily: 'Poppins',
                                  //           color: FlutterFlowTheme.of(context)
                                  //               .primaryText,
                                  //         ),
                                  //     elevation: 10,
                                  //     borderSide: BorderSide(
                                  //       color: FlutterFlowTheme.of(context)
                                  //           .primaryText,
                                  //       width: 1,
                                  //     ),
                                  //     borderRadius: BorderRadius.circular(8),
                                  //   ),
                                  // ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      5, 0, 0, 0),
                                  child: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                          minimumSize:
                                              const Size(double.infinity, 50),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          side: const BorderSide(
                                            color: Colors.grey,
                                          )),
                                      onPressed: () {},
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/svg/apple.png',
                                            // color: Colors.grey,
                                          ),
                                          // Wid(),

                                          const SizedBox(
                                            width: 10,
                                          ),
                                          const Text('Apple'),
                                        ],
                                      )),
                                  // FFButtonWidget(
                                  //               onPressed: () {
                                  //                 print('Button pressed ...');
                                  //               },
                                  //               text: 'Button',
                                  //               options: FFButtonOptions(
                                  //                 width: 130,
                                  //                 height: 40,
                                  //                 color: FlutterFlowTheme.of(context)
                                  //                     .primaryBackground,
                                  //                 textStyle: FlutterFlowTheme.of(context)
                                  //                     .subtitle2
                                  //                     .override(
                                  //                       fontFamily: 'Poppins',
                                  //                       color: FlutterFlowTheme.of(context)
                                  //                           .primaryText,
                                  //                     ),
                                  //                 elevation: 10,
                                  //                 borderSide: BorderSide(
                                  //                   color: FlutterFlowTheme.of(context)
                                  //                       .primaryText,
                                  //                   width: 1,
                                  //                 ),
                                  //                 borderRadius: BorderRadius.circular(8),
                                  //               ),
                                  //             ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'No account yet?',
                          // style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                        Text(
                          'Create account',
                          // style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

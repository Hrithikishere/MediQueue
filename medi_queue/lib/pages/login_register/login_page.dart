import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

final _formKey = GlobalKey<FormState>();
final _username = TextEditingController();
final _password = TextEditingController();

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    FocusNode nodeUsername = FocusNode();
    FocusNode nodePassword = FocusNode();
    FocusNode nodeLogin = FocusNode();

    // void _submitForm() {
    //   if (_formKey.currentState!.validate()) {}
    // }

    return Scaffold(
      backgroundColor: primaryColor,
      resizeToAvoidBottomInset: true,
      //singleCHILDSCROLL
      // backgroundColor: Color(0xffF2F3FF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: MediaQuery.of(context).size.width * 0.15),
                //image
                Container(
                  padding: const EdgeInsets.only(top: 10, bottom: 20),
                  child: Image.asset(
                    'assets/icons/splash_logo.png',
                    height: 140,
                    width: 140,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.width * 0.02),
                //text
                Text(
                  'Welcome ',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: textLightColor),
                ),
                Text(
                  'to Mediqueue Mobile App',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontSize: 17, color: textLightColor),
                ),
                SizedBox(height: MediaQuery.of(context).size.width * 0.07),

                //----Form----
                Form(
                  key: _formKey,
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      //input - username
                      Container(
                        margin: const EdgeInsets.only(
                            bottom: 15.0, left: 32, right: 32),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(10.0), // Border radius
                          // color: glassyColor,
                        ),
                        constraints:
                            const BoxConstraints(minHeight: 54, maxWidth: 350),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.85,
                          child: TextFormField(
                            style: TextStyle(color: textLightColor),
                            controller: _username,
                            focusNode: nodeUsername,

                            // textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: glassyColor,
                              hintText: 'Enter username',
                              hintStyle: TextStyle(color: textLightColor),
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.green, width: 5.0),
                              ),
                            ),
                            onFieldSubmitted: (value) {
                              FocusScope.of(context).requestFocus(nodePassword);
                            },
                            validator: (value) {
                              if (value!.isEmpty ||
                                  !RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                                return 'Please enter username';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      //input - password
                      Container(
                        margin: const EdgeInsets.only(
                            bottom: 15.0, left: 32, right: 32),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(10.0), // Border radius
                          // color: glassyColor,
                        ),
                        constraints:
                            const BoxConstraints(minHeight: 54, maxWidth: 350),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.85,
                          child: TextFormField(
                            obscureText: true,
                            obscuringCharacter: '*',
                            style: TextStyle(color: textLightColor),
                            controller: _password,
                            focusNode: nodePassword,

                            // textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: glassyColor,
                              hintText: 'Enter password',
                              hintStyle: TextStyle(color: textLightColor),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: secondaryColor, width: 5.0),
                              ),
                            ),
                            onFieldSubmitted: (value) {
                              FocusScope.of(context).requestFocus(nodeLogin);
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter password';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      //login button
                      Container(
                        margin: const EdgeInsets.only(
                            bottom: 22, left: 32, right: 32),
                        constraints: const BoxConstraints(
                            minHeight: 54, maxHeight: 54, maxWidth: 350),
                        //height: 54,
                        width: 330,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: secondaryColor,
                            ),
                            focusNode: nodeLogin,
                            // maximumSize: Size(150.0, 25.0),
                            child: Text('Login',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .copyWith(
                                        color: textLightColor,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 15.5)),
                            onPressed: () {
                              // _submitForm();
                              if (_formKey.currentState!.validate()) {
                                if (_password.text == "password" &&
                                    _username.text == "admin") {
                                  _username.clear();
                                  _password.clear();
                                  context.go('/home');
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        child: const Text(
                                            "Incorrect username or password"),
                                      ),
                                      elevation: 15.0,
                                      behavior: SnackBarBehavior.floating,
                                      backgroundColor: Colors.redAccent,
                                      // margin: const EdgeInsets.all(10),
                                    ),
                                  );
                                }
                              }
                            }),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: MediaQuery.of(context).size.width * 0.15),

                //mediqueue text version
                Container(
                  child: Column(
                    children: [
                      Text(
                        "Mediqueue",
                        textAlign: TextAlign.left,
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(fontSize: 34),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Version 1.0.0.0",
                        textAlign: TextAlign.left,
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(fontSize: 14),
                      ),
                    ],
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

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    final _username = TextEditingController();
    final _password = TextEditingController();

    FocusNode nodeUsername = FocusNode();
    FocusNode nodePassword = FocusNode();
    FocusNode nodeLogin = FocusNode();

    void _submitForm() {
      if (_formKey.currentState!.validate()) {}
    }

    return Scaffold(
      backgroundColor: primaryColor,
      //resizeToAvoidBottomInset: false,
      //singleCHILDSCROLL
      // backgroundColor: Color(0xffF2F3FF),
      body: SafeArea(
        child: Align(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: SafeArea(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    //image
                    Container(
                      padding: const EdgeInsets.only(top: 10, bottom: 20),
                      child: Image.asset(
                        'assets/icons/splash_logo.png',
                        height: 180,
                        width: 180,
                      ),
                    ),
                    SizedBox(height: 15),
                    //text
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        'Welcome ',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: textLightColor),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3.0, bottom: 22.0),
                      child: Text(
                        'to Mediqueue Mobile App',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(fontSize: 17, color: textLightColor),
                      ),
                    ),
                    SizedBox(height: 15),

                    //----Form----
                    Form(
                      key: _formKey,
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                                bottom: 15.0, left: 32, right: 32),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(10.0), // Border radius
                              // color: glassyColor,
                            ),
                            constraints: const BoxConstraints(
                                minHeight: 54, maxWidth: 350),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.85,
                              child: TextFormField(
                                style: TextStyle(color: textLightColor),
                                controller: _username,
                                focusNode: nodeUsername,

                                // textAlignVertical: TextAlignVertical.center,
                                decoration: InputDecoration(
                                  hintText: 'Enter username',
                                  hintStyle: TextStyle(color: textLightColor),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.green, width: 5.0),
                                  ),
                                ),
                                onFieldSubmitted: (value) {
                                  FocusScope.of(context)
                                      .requestFocus(nodePassword);
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
                          //password
                          Container(
                            margin: const EdgeInsets.only(
                                bottom: 15.0, left: 32, right: 32),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(10.0), // Border radius
                              // color: glassyColor,
                            ),
                            constraints: const BoxConstraints(
                                minHeight: 54, maxWidth: 350),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.85,
                              child: TextFormField(
                                // obscureText: true,
                                // obscuringCharacter: '*',
                                style: TextStyle(color: textLightColor),
                                controller: _password,
                                focusNode: nodePassword,

                                // textAlignVertical: TextAlignVertical.center,
                                decoration: InputDecoration(
                                  hintText: 'Enter password',
                                  hintStyle: TextStyle(color: textLightColor),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: secondaryColor, width: 5.0),
                                  ),
                                ),
                                onFieldSubmitted: (value) {
                                  FocusScope.of(context)
                                      .requestFocus(nodeLogin);
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
                          SizedBox(height: 15),
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
                                      context.go('/home');
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
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
                    SizedBox(height: 45),

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
        ),
      ),
    );
  }
}

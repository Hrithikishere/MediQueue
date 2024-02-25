import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final _name = TextEditingController();
    final _email = TextEditingController();
    final _gender = TextEditingController();
    final _phone = TextEditingController();
    final _address = TextEditingController();
    final _password = TextEditingController();

    FocusNode nodeName = FocusNode();
    FocusNode nodeEmail = FocusNode();
    FocusNode nodeGender = FocusNode();
    FocusNode nodePhone = FocusNode();
    FocusNode nodePassword = FocusNode();
    FocusNode nodeAddress = FocusNode();
    FocusNode nodeSignin = FocusNode();
    return Scaffold(
      backgroundColor: primaryColor,
      //resizeToAvoidBottomInset: false,
      //singleCHILDSCROLL
      // backgroundColor: Color(0xffF2F3FF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Create\nAccount",
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      fontSize: 34, fontWeight: FontWeight.bold, height: 1.2),
                ),

                const SizedBox(height: 15),

                //----top portion (Welcome)----
                Form(
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      //name
                      Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(10.0), // Border radius
                          // color: glassyColor,
                        ),
                        margin: EdgeInsets.only(bottom: 15),
                        width: double.infinity,
                        constraints: const BoxConstraints(maxWidth: 450),
                        child: TextFormField(
                          style: TextStyle(color: textLightColor),
                          controller: _name,
                          focusNode: nodeName,
                          onFieldSubmitted: (value) {
                            FocusScope.of(context).requestFocus(nodePassword);
                          },
                          // textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: glassyColor,
                            hintText: 'Name',
                            hintStyle: TextStyle(color: textLightColor),
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: secondaryColor, width: 5.0),
                            ),
                          ),
                        ),
                      ),
                      //email
                      Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(10.0), // Border radius
                          // color: glassyColor,
                        ),
                        margin: EdgeInsets.only(bottom: 15),
                        width: double.infinity,
                        constraints: const BoxConstraints(maxWidth: 450),
                        child: TextFormField(
                          style: TextStyle(color: textLightColor),
                          controller: _email,
                          focusNode: nodeEmail,
                          onFieldSubmitted: (value) {
                            FocusScope.of(context).requestFocus(nodeSignin);
                          },
                          // textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: glassyColor,
                            hintText: 'Email',
                            hintStyle: TextStyle(color: textLightColor),
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: secondaryColor, width: 5.0),
                            ),
                          ),
                          obscureText: true,
                        ),
                      ),
                      //password
                      Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(10.0), // Border radius
                          // color: glassyColor,
                        ),
                        margin: EdgeInsets.only(bottom: 15),
                        width: double.infinity,
                        constraints: const BoxConstraints(maxWidth: 450),
                        child: TextFormField(
                          style: TextStyle(color: textLightColor),
                          controller: _password,
                          focusNode: nodePassword,
                          onFieldSubmitted: (value) {
                            FocusScope.of(context).requestFocus(nodeSignin);
                          },
                          // textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: glassyColor,
                            hintText: 'Password',
                            hintStyle: TextStyle(color: textLightColor),
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: secondaryColor, width: 5.0),
                            ),
                          ),
                          obscureText: true,
                        ),
                      ),
                      //gender
                      Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(10.0), // Border radius
                            // color: glassyColor,
                          ),
                          margin: const EdgeInsets.only(bottom: 5),
                          height: 60,
                          constraints: const BoxConstraints(maxWidth: 450),
                          child: DropdownButtonFormField<String>(
                            style: TextStyle(color: textLightColor),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: glassyColor,
                              border: OutlineInputBorder(),
                            ),
                            hint: Text(
                              "Select Category",
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .displayLarge!
                                  .copyWith(
                                    fontSize: 15,
                                  ),
                            ),
                            // value: dropdownValue,
                            dropdownColor: primaryColor,

                            onChanged: (String? newValue) {},
                            items: <String>[
                              'Male',
                              'Female',
                              'Other',
                              'Rather not say',
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          )),
                      const SizedBox(height: 10),
                      //phone
                      Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(10.0), // Border radius
                          // color: glassyColor,
                        ),
                        margin: const EdgeInsets.only(bottom: 15),
                        width: double.infinity,
                        constraints: const BoxConstraints(maxWidth: 450),
                        child: TextFormField(
                          style: TextStyle(color: textLightColor),
                          controller: _phone,
                          focusNode: nodePhone,
                          onFieldSubmitted: (value) {
                            FocusScope.of(context).requestFocus(nodeSignin);
                          },
                          // textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: glassyColor,
                            hintText: 'Phone',
                            hintStyle: TextStyle(color: textLightColor),
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: secondaryColor, width: 5.0),
                            ),
                          ),
                          obscureText: true,
                        ),
                      ),
                      //Address
                      Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(10.0), // Border radius
                          // color: glassyColor,
                        ),
                        margin: const EdgeInsets.only(bottom: 15),
                        width: double.infinity,
                        constraints: const BoxConstraints(maxWidth: 450),
                        child: TextFormField(
                          style: TextStyle(color: textLightColor),
                          controller: _address,
                          focusNode: nodeAddress,
                          onFieldSubmitted: (value) {
                            FocusScope.of(context).requestFocus(nodeSignin);
                          },
                          // textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: glassyColor,
                            hintText: 'Address',
                            hintStyle: TextStyle(color: textLightColor),
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: secondaryColor, width: 5.0),
                            ),
                          ),
                          obscureText: true,
                        ),
                      ),
                      const SizedBox(height: 15),
                      //button
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 22, left: 32, right: 32),
                        child: Container(
                          constraints: const BoxConstraints(
                              minHeight: 54, maxHeight: 54, maxWidth: 350),
                          //height: 54,
                          width: 330,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: secondaryColor,
                              ),

                              // maximumSize: Size(150.0, 25.0),
                              child: Text('Register',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .copyWith(
                                          color: textLightColor,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 15.5)),
                              onPressed: () {
                                context.go('/home');
                              }),
                        ),
                      ),
                      const SizedBox(height: 10),
                      //login text
                      InkWell(
                        onTap: () {
                          context.go('/login_page');
                        },
                        child: RichText(
                          text: TextSpan(
                            text: "",
                            children: [
                              TextSpan(
                                text: "Already have an account? ",
                                style: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .copyWith(
                                      fontSize: 16,
                                    ),
                              ),
                              TextSpan(
                                text: "Log In",
                                style: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .copyWith(
                                        fontSize: 16, color: secondaryColor),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      // Spacer(flex: 1),
                      //mediqueue
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
                            const SizedBox(height: 10),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

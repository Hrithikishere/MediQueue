import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';
import 'package:medi_queue/util/common/bottomAppBar.dart';

class LoginOrRegisterPage extends StatelessWidget {
  const LoginOrRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Center(
          child: Container(
            margin: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //text
                Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Mediqueue",
                          textAlign: TextAlign.left,
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(fontSize: 14),
                        ),
                        const SizedBox(height: 10),
                        //big text
                        RichText(
                          text: TextSpan(
                            text: "",
                            children: [
                              TextSpan(
                                text: "Welcome to ",
                                style: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .copyWith(
                                        fontSize: 48,
                                        height: 1.2,
                                        fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: "Mediqueue!",
                                style: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .copyWith(
                                        fontSize: 48,
                                        color: secondaryColor,
                                        height: 1.2,
                                        fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ]),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        constraints: const BoxConstraints(maxWidth: 400),
                        width: double.infinity,
                        height: 60,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: secondaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                          onPressed: () {
                            context.go('/register');
                          },
                          child: Text(
                            "Create new account?",
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(fontSize: 16, color: textLightColor),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
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
                    ],
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

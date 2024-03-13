import 'dart:async';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';
import 'package:medi_queue/pages/app_intro/intro_one_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initState() {
    super.initState();
    // Start a timer to navigate after 2 seconds
    Timer(Duration(seconds: 2), navigateToNextScreen);
  }

  void navigateToNextScreen() {
    // context.push('/intro_one');
    context.push('/login_page');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: AnimatedSplashScreen(
        duration: 2000,
        splash:
            //image

            Image.asset(
          "assets/icons/splash_logo.png",
          height: 100,
          width: 100,
        ),

        //next button
        nextScreen: IntroOnePage(),
        splashTransition: SplashTransition.fadeTransition,
        animationDuration: Duration(seconds: 1),
        backgroundColor: primaryColor,
        // splashIconSize: double.maxFinite,

        nextRoute: "/intro_one",
      ),
    );
  }
}

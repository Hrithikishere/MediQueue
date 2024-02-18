import 'package:flutter/material.dart';
import 'package:medi_queue/config/app_router.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:medi_queue/framework/helpers/constants/data/blogs.dart';
import 'package:medi_queue/pages/app_intro/intro_four_page.dart';
import 'package:medi_queue/pages/app_intro/intro_three_page.dart';
import 'package:medi_queue/pages/app_intro/intro_two_page.dart';
import 'package:medi_queue/pages/app_intro/splash_page.dart';
import 'package:medi_queue/pages/appointment/appointments_page.dart';
import 'package:medi_queue/pages/blog/blogs_page.dart';
import 'package:medi_queue/pages/doctors/doctor_profile_page.dart';
import 'package:medi_queue/pages/home_page.dart';
import 'package:medi_queue/pages/app_intro/intro_one_page.dart';
import 'package:medi_queue/pages/more_page.dart';
import 'package:medi_queue/pages/doctor_profile_page.dart';
import 'package:medi_queue/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      // home: MorePage(),
      routerConfig: router,
      // routeInformationParser: router.routeInformationParser,
      // routerDelegate: router.routerDelegate,
      theme: ThemeData(
          primarySwatch: Colors.green,
          focusColor: Colors.green,
          highlightColor: Colors.green,
          hintColor: Colors.green,
          textTheme: GoogleFonts.poppinsTextTheme(TextTheme(
              displayLarge: TextStyle(
                color: textLightColor,
              ),
              bodySmall: TextStyle(color: textDimColor)))),
    );
  }
}

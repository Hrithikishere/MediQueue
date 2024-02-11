import 'package:flutter/material.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';
import 'package:medi_queue/pages/blogs_page.dart';

import 'package:google_fonts/google_fonts.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlogsPage(),
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          textTheme: GoogleFonts.poppinsTextTheme(TextTheme(
              displayLarge: TextStyle(
                color: textLightColor,
              ),
              bodySmall: TextStyle(color: textDimColor)))),
    );
  }
}

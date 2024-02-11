import 'package:flutter/material.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';
import 'package:medi_queue/util/appointment_card.dart';
import 'package:medi_queue/util/blogs_card.dart';
import 'package:medi_queue/util/category_card.dart';
import 'package:medi_queue/util/common/topAppbar.dart';
import 'package:medi_queue/util/next_appointment_card.dart';

class BlogsPage extends StatelessWidget {
  const BlogsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
          child: Container(
        margin: EdgeInsets.all(25),
        child: Column(
          children: [
            TopAppBar(),
            BlogsCard(),
            BlogsCard(),
            AppointmentCard(),
            NextAppointmentCard(),
            CategoryCard(
                cardName: "Ophthalmologist",
                icon: Icon(Icons.remove_red_eye_sharp),
                onPressed: () {})
          ],
        ),
      )),
    );
  }
}

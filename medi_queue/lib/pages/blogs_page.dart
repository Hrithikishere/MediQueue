import 'package:flutter/material.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';
import 'package:medi_queue/util/common/topAppbar.dart';
import 'package:medi_queue/util/doctor_card.dart';
import 'package:medi_queue/util/doctor_profile_card.dart';

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
            TopAppBar(
              title: "Blogs",
            ),
            // BlogsCard(),
            // BlogsCard(),
            // AppointmentCard(),
            // NextAppointmentCard(),
            // CategoryCard(cardName: "Ophthalmologist", onPressed: () {}),
            const DoctorCard(
              doctorImageAddress:
                  'https://static.vecteezy.com/system/resources/thumbnails/028/287/384/small/a-mature-indian-male-doctor-on-a-white-background-ai-generated-photo.jpg',
              doctorName: 'Dr. Rahim bhai bhai bhai',
              doctorRating: '4.8',
              doctorType: 'Surgeon',
            ),
            //Search Bar
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                color: glassyColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                style: TextStyle(color: textLightColor),
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(color: textLightColor),
                  suffixIcon: Icon(
                    Icons.search,
                    color: textLightColor,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            // DoctorListItem(),
            // CategoryListItem(),
            // TextDescriptionCard(
            //     containerHeight: 200,
            //     description:
            //         "The digestive system speaks a language I understand. After years of training (MBBS, FCPS, MD), I decipher its whispers to diagnose and treat liver, pancreatic, and other gut issues. At Enam Medical College & Hospital, I double down: guiding patients as a Professor and navigating their digestive journeys as a Gastroenterologist. Whether it's chronic pain, liver concerns, or gut health, every victory fuels my passion. Empowering individuals to reclaim their well-being is my mission."),
            DoctorProfileCard(),
          ],
        ),
      )),
    );
  }
}

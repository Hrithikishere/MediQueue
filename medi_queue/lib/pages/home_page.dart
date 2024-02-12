import 'package:flutter/material.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';
import 'package:medi_queue/util/appointment_card.dart';
import 'package:medi_queue/util/category_card.dart';
import 'package:medi_queue/util/common/bottomAppBar.dart';
import 'package:medi_queue/util/doctor_card.dart';
import 'package:medi_queue/util/next_appointment_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //appbar
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello",
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(fontSize: 14),
                        ),
                        Text(
                          "Mr. Abdur Rouf",
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(fontSize: 20),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.circular(12)),
                      child: Icon(Icons.person, color: textLightColor),
                    )
                  ],
                ),
              ),

              //card
              NextAppointmentCard(),
              const SizedBox(height: 15),
              //search bar

              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
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
              //horizontal category
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Categories",
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(fontSize: 18),
                ),
              ),
              //doctor Category
              Container(
                height: 120,
                margin: EdgeInsets.only(top: 5),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CategoryCard(
                      cardName: "Surgeon",
                      onPressed: () {},
                    ),
                    CategoryCard(
                      cardName: "Dentist",
                      onPressed: () {},
                    ),
                    CategoryCard(
                      cardName: "Pharmacist",
                      onPressed: () {},
                    ),
                    CategoryCard(
                      cardName: "Nutritionist",
                      onPressed: () {},
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 15),

              Container(
                height: 25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "Top Doctors",
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(fontSize: 18),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "See all",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[500]),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 15),

              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    DoctorCard(
                      doctorImageAddress:
                          'https://static.vecteezy.com/system/resources/thumbnails/028/287/384/small/a-mature-indian-male-doctor-on-a-white-background-ai-generated-photo.jpg',
                      doctorName: 'Dr. Rahim bhai',
                      doctorRating: '4.8',
                      doctorType: 'Surgeon',
                    ),
                    DoctorCard(
                      doctorImageAddress:
                          'https://static.vecteezy.com/system/resources/thumbnails/028/287/384/small/a-mature-indian-male-doctor-on-a-white-background-ai-generated-photo.jpg',
                      doctorName: 'Dr. Karim bhai',
                      doctorRating: '4.9',
                      doctorType: 'Therapist',
                    ),
                    DoctorCard(
                      doctorImageAddress:
                          'https://static.vecteezy.com/system/resources/thumbnails/028/287/384/small/a-mature-indian-male-doctor-on-a-white-background-ai-generated-photo.jpg',
                      doctorName: 'Dr. Zakir bhai',
                      doctorRating: '4.8',
                      doctorType: 'Dentist',
                    ),
                    DoctorCard(
                      doctorImageAddress:
                          'https://static.vecteezy.com/system/resources/thumbnails/028/287/384/small/a-mature-indian-male-doctor-on-a-white-background-ai-generated-photo.jpg',
                      doctorName: 'Dr. Mahir bhai',
                      doctorRating: '4.5',
                      doctorType: 'Nutririonist',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBars(),
    );
  }
}

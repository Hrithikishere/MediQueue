import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';
import 'package:medi_queue/util/appointment/appointment_card.dart';
import 'package:medi_queue/util/category/category_card.dart';
import 'package:medi_queue/util/common/bottomAppBar.dart';
import 'package:medi_queue/util/doctor/doctor_card.dart';
import 'package:medi_queue/util/appointment/next_appointment_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
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
                      InkWell(
                        onTap: () {
                          context.go('/my_profile');
                        },
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: secondaryColor,
                              borderRadius: BorderRadius.circular(12)),
                          child: Icon(Icons.person, color: textLightColor),
                        ),
                      )
                    ],
                  ),
                ),

                //card
                InkWell(
                    onTap: () {
                      context.go('/appointment_details');
                    },
                    child: NextAppointmentCard()),
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
                        iconData: Icons.masks_sharp,
                        onPressed: () {
                          context.go('/doctor_surgeon');
                        },
                      ),
                      CategoryCard(
                        iconData: Icons.remove_red_eye_outlined,
                        cardName: "Ophthalmologist",
                        onPressed: () {
                          context.go('/doctor_ophthalmologist');
                        },
                      ),
                      CategoryCard(
                        cardName: "Medicine",
                        iconData: Icons.medical_services_outlined,
                        onPressed: () {
                          context.go('/doctor_medicine');
                        },
                      ),
                      CategoryCard(
                        cardName: "Cardioloigst",
                        iconData: Icons.airline_seat_legroom_reduced_rounded,
                        onPressed: () {
                          context.go('/doctor_cardiologist');
                        },
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
                        onPressed: () {
                          context.go('/doctor_all');
                        },
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
                  height: 220,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      InkWell(
                        onTap: () {
                          context.go('/doctor_profile');
                        },
                        child: DoctorCard(
                          doctorImageAddress:
                              'https://static.vecteezy.com/system/resources/thumbnails/028/287/384/small/a-mature-indian-male-doctor-on-a-white-background-ai-generated-photo.jpg',
                          doctorName: 'Dr. Md Rakib',
                          doctorRating: '4.8',
                          doctorType: 'Surgeon',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          context.go('/doctor_profile');
                        },
                        child: DoctorCard(
                          doctorImageAddress:
                              'https://headshots-inc.com/wp-content/uploads/2020/11/Blog-Images-1.jpg',
                          doctorName: 'Dr. Karim Hasan',
                          doctorRating: '4.9',
                          doctorType: 'Therapist',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          context.go('/doctor_profile');
                        },
                        child: DoctorCard(
                          doctorImageAddress:
                              'https://www.ianjohns.com/wp-content/uploads/2021/10/victor-surgeon-headshot.jpg',
                          doctorName: 'Dr. Zakir Khan',
                          doctorRating: '4.8',
                          doctorType: 'Dentist',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          context.go('/doctor_profile');
                        },
                        child: DoctorCard(
                          doctorImageAddress:
                              'https://images.squarespace-cdn.com/content/v1/631ba8eed2196a6795698665/ef66ba74-e5e7-452f-bc82-842d718520da/2022-08-04-KP-Lee-Jeffrey-0055.jpg',
                          doctorName: 'Dr. Mahir Hossain',
                          doctorRating: '4.5',
                          doctorType: 'Nutririonist',
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
      bottomNavigationBar: BottomAppBars(
        value: 1,
      ),
    );
  }
}

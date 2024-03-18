import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';
import 'package:medi_queue/framework/helpers/constants/data/doctors.dart';
import 'package:medi_queue/providers/login_register/loginProvider.dart';
import 'package:medi_queue/util/appointment/appointment_card.dart';
import 'package:medi_queue/util/category/category_card.dart';
import 'package:medi_queue/util/common/bottomAppBar.dart';
import 'package:medi_queue/util/doctor/doctor_card.dart';
import 'package:medi_queue/util/appointment/next_appointment_card.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<int> topDoctors = [1111, 1115, 1119, 1121, 1125];
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
                          Consumer(
                            builder: (context, ref, child) {
                              String name =
                                  ref.watch(authProvider.notifier).Name();
                              return Text(
                                name,
                                style: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .copyWith(fontSize: 20),
                              );
                            },
                          )
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          context.push('/my_profile');
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
                      context.push('/appointment_details');
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
                          context.push('/doctor_surgeon');
                        },
                      ),
                      CategoryCard(
                        iconData: Icons.remove_red_eye_outlined,
                        cardName: "Ophthalmologist",
                        onPressed: () {
                          context.push('/doctor_ophthalmologist');
                        },
                      ),
                      CategoryCard(
                        cardName: "Medicine",
                        iconData: Icons.medical_services_outlined,
                        onPressed: () {
                          context.push('/doctor_medicine');
                        },
                      ),
                      CategoryCard(
                        cardName: "Cardioloigst",
                        iconData: Icons.airline_seat_legroom_reduced_rounded,
                        onPressed: () {
                          context.push('/doctor_cardiologist');
                        },
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 15),

                SizedBox(
                  // height: 25,
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
                              .copyWith(fontSize: 17),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          context.push('/doctor_all');
                        },
                        child: Text(
                          "See all",
                          style: TextStyle(
                              fontSize: 13,
                              // fontWeight: FontWeight.bold,
                              color: Colors.grey[500]),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 15),

                SizedBox(
                  height: 250,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: topDoctors.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: InkWell(
                          onTap: () {
                            context
                                .push('/doctor_profile/${topDoctors[index]}');
                          },
                          child: DoctorCard(id: topDoctors[index]),
                        ),
                      );
                    },
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

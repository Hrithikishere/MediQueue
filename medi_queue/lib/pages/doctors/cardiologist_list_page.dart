import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';
import 'package:medi_queue/util/common/bottomAppBar.dart';
import 'package:medi_queue/util/common/topAppbar.dart';
import 'package:medi_queue/util/doctor/doctor_list_item.dart';

class CardiologitstListPage extends StatelessWidget {
  const CardiologitstListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            margin: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TopAppBar(
                  title: "Cardiologist",
                  onPressed: () {
                    context.go('/home');
                  },
                ),
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
                SizedBox(height: 15),
                Center(
                  child: Text(
                    "Find the best for you",
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(fontSize: 17),
                  ),
                ),
                SizedBox(height: 15),
                InkWell(
                  onTap: () {
                    context.go('/doctor_profile');
                  },
                  child: DoctorListItem(
                    doctorName: "Dr. Atia Rasida Silvia",
                    doctorDesg: "Cardiologist",
                    imageAddress:
                        "https://cdn.goodgallery.com/274bb1d3-b411-4b2a-bf11-30e8078d1335/s/0800/2b2j8gdj/doctor-headshot-white-lab-coat.jpg",
                  ),
                ),

                SizedBox(height: 15),
                InkWell(
                  onTap: () {
                    context.go('/doctor_profile');
                  },
                  child: DoctorListItem(
                    doctorName: "Dr. Safwan Rahman",
                    doctorDesg: "Cardiologist",
                    imageAddress:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGnZse-bioFo_rpeu-52OVZ913euahPrdU7Q&usqp=CAU",
                  ),
                ),
                SizedBox(height: 15),
                InkWell(
                  onTap: () {
                    context.go('/doctor_profile');
                  },
                  child: DoctorListItem(
                    doctorName: "Dr. Md. Mohaimen",
                    doctorDesg: "Cardiologist",
                    imageAddress:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDIRo95xp0kvpxVHenILfxivSlH_I2N4f4mA&usqp=CAU",
                  ),
                ),
                SizedBox(height: 15),
                InkWell(
                  onTap: () {
                    context.go('/doctor_profile');
                  },
                  child: DoctorListItem(
                    doctorName: "Dr. Mohammad Himel",
                    doctorDesg: "Cardiologist",
                    imageAddress:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSknFfj8_5xbtj-UdhvKJk8AYyb6sll3t2E7g&usqp=CAU",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBars(
        value: 0,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';
import 'package:medi_queue/util/common/bottomAppBar.dart';
import 'package:medi_queue/util/common/topAppbar.dart';
import 'package:medi_queue/util/doctor/doctor_list_item.dart';

class SurgeonListPage extends StatelessWidget {
  const SurgeonListPage({super.key});

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
                  title: "Surgeon",
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
                    doctorName: "Dr. Sayyedul Islam",
                    doctorDesg: "Surgeon",
                    imageAddress:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFFIwX8z0TW_flwJVc4X41tiK6JqsBmyzaYOon-Nj-45ZumA6UvgkSiPN6mp5m_lm8bQA&usqp=CAU",
                  ),
                ),
                SizedBox(height: 15),
                InkWell(
                  onTap: () {
                    context.go('/doctor_profile');
                  },
                  child: DoctorListItem(
                    doctorName: "Dr. Farzana Rahman",
                    doctorDesg: "Surgeon",
                    imageAddress:
                        "https://images.squarespace-cdn.com/content/v1/631ba8eed2196a6795698665/39b134c5-e032-463e-ae1b-b91a08b1cb43/2022-09-06-KP-Ratnesar-Neethi-0218.jpg?format=1500w",
                  ),
                ),
                SizedBox(height: 15),
                InkWell(
                  onTap: () {
                    context.go('/doctor_profile');
                  },
                  child: DoctorListItem(
                    doctorName: "Dr. Mohammad Ullah",
                    doctorDesg: "Surgeon",
                    imageAddress:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXPytx7Nc3cqTGbeRybqxn071anGSMyDrec3gnzvv5aJZXIELTe_d2xjgWLXoFayStLgE&usqp=CAU",
                  ),
                ),
                SizedBox(height: 15),
                InkWell(
                  onTap: () {
                    context.go('/doctor_profile');
                  },
                  child: DoctorListItem(
                    doctorName: "Dr. Ratri Zaman",
                    doctorDesg: "Surgeon",
                    imageAddress:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiEKfiloz1TaLifTCg0O79dLdRJ2t4BMMWDiIYlBfypFXDLKsZfOPH1_OTp37WN8jK10k&usqp=CAU",
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

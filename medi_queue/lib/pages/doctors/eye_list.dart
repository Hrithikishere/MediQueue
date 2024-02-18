import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';
import 'package:medi_queue/util/common/bottomAppBar.dart';
import 'package:medi_queue/util/common/topAppbar.dart';
import 'package:medi_queue/util/doctor/doctor_list_item.dart';

class EyeListPage extends StatelessWidget {
  const EyeListPage({super.key});

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
                  title: "Ophthalmologist",
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
                    doctorName: "Dr. Mizan Islam",
                    doctorDesg: "Ophthalmologist",
                    imageAddress:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsvPunOo0a3eAs7KJWWfFsSPvHVfUtUk_llA&usqp=CAU",
                  ),
                ),
                SizedBox(height: 15),
                InkWell(
                  onTap: () {
                    context.go('/doctor_profile');
                  },
                  child: DoctorListItem(
                    doctorName: "Dr. Sayeda Rahman",
                    doctorDesg: "Ophthalmologist",
                    imageAddress:
                        "https://osh.imgix.net/nappy-waxbill/production/portraits/1841511797-Jose-Donatien.jpg?auto=compress%2Cformat&crop=focalpoint&fit=crop&fp-x=0.5&fp-y=0.5&h=600&q=70&w=800&s=12f1c537d1b8c841b99c83cbecae7d5b",
                  ),
                ),
                SizedBox(height: 15),
                InkWell(
                  onTap: () {
                    context.go('/doctor_profile');
                  },
                  child: DoctorListItem(
                    doctorName: "Dr. Mohammad Siyam",
                    doctorDesg: "Ophthalmologist",
                    imageAddress:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRYCmbH0qJJEsGZoDvDv8OOYm-SwGNhPZ5ng&usqp=CAU",
                  ),
                ),
                SizedBox(height: 15),
                InkWell(
                  onTap: () {
                    context.go('/doctor_profile');
                  },
                  child: DoctorListItem(
                    doctorName: "Dr. Sumona Akter",
                    doctorDesg: "Ophthalmologist",
                    imageAddress:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUg7sEj954JqRY8HGUYDrz5XMD571U2w16iisLmhuyOmiDYo-Q0BaNyTITpodN8qNFrCg&usqp=CAU",
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

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';
import 'package:medi_queue/util/common/bottomAppBar.dart';
import 'package:medi_queue/util/common/topAppbar.dart';
import 'package:medi_queue/util/doctor/doctor_list_item.dart';

class MedicineListPage extends StatelessWidget {
  const MedicineListPage({super.key});

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
                  title: "Medicine",
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
                    doctorName: "Dr. Sayed Islam",
                    doctorDesg: "Medicine",
                    imageAddress:
                        "https://images.squarespace-cdn.com/content/v1/51ef4493e4b0561c90fa76d6/1573492422363-K8FFCA73TJTHRXB36E54/physician+headshot.jpg?format=750w",
                  ),
                ),
                SizedBox(height: 15),
                InkWell(
                  onTap: () {
                    context.go('/doctor_profile');
                  },
                  child: DoctorListItem(
                    doctorName: "Dr. Tasnim Rahman",
                    doctorDesg: "Medicine",
                    imageAddress:
                        "https://www.obgynsilverspring.com/wp-content/uploads/sites/2/2023/08/Dr.-Chinwe-Echeazu-update-2.jpg",
                  ),
                ),
                SizedBox(height: 15),
                InkWell(
                  onTap: () {
                    context.go('/doctor_profile');
                  },
                  child: DoctorListItem(
                    doctorName: "Dr. Tahmin Enam",
                    doctorDesg: "Medicine",
                    imageAddress:
                        "https://media.istockphoto.com/id/1306584974/photo/portrait-of-a-handsome-male-nurse.jpg?s=612x612&w=0&k=20&c=1ii5X3XwTduQBfLrNnw4MVrhaRvAysP-YhaSJN12aFI=",
                  ),
                ),
                SizedBox(height: 15),
                InkWell(
                  onTap: () {
                    context.go('/doctor_profile');
                  },
                  child: DoctorListItem(
                    doctorName: "Dr. Juthi Akter",
                    doctorDesg: "Medicine",
                    imageAddress:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdLV_JV1dSizElIg6vCWzaYafBlebJtk6PHN06-yA9FxLrorMO2dxxEHR3zQxANs2b0Gc&usqp=CAU",
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

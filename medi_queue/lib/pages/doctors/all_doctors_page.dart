import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';
import 'package:medi_queue/util/common/bottomAppBar.dart';
import 'package:medi_queue/util/common/topAppbar.dart';
import 'package:medi_queue/util/doctor/doctor_list_item.dart';

class AllDoctorsListPage extends StatelessWidget {
  const AllDoctorsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    String? dropdownValue;

    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TopAppBar(
                  title: "All Doctors",
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
                Container(
                    color: glassyColor,
                    height: 60,
                    child: DropdownButtonFormField<String>(
                      style: TextStyle(color: textLightColor),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      hint: Text(
                        "Select Category",
                        textAlign: TextAlign.center,
                        style:
                            Theme.of(context).textTheme.displayLarge!.copyWith(
                                  fontSize: 15,
                                ),
                      ),
                      value: dropdownValue,
                      dropdownColor: primaryColor,
                      onChanged: (String? newValue) {},
                      items: <String>[
                        'Surgeon',
                        'Opthalmologist',
                        'Medicine',
                        'Cardiologist'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    )),

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
                    doctorDesg: "Cardiologist",
                    imageAddress:
                        "https://img.freepik.com/free-photo/portrait-male-doctor-special-equipment_23-2148980809.jpg",
                  ),
                ),
                SizedBox(height: 15),
                InkWell(
                  onTap: () {
                    context.go('/doctor_profile');
                  },
                  child: DoctorListItem(
                    doctorName: "Dr. Farzana Rahman",
                    doctorDesg: "Cardiologist",
                    imageAddress:
                        "https://img.freepik.com/free-photo/portrait-experienced-professional-therapist-with-stethoscope-looking-camera_1098-19305.jpg",
                  ),
                ),
                SizedBox(height: 15),
                InkWell(
                  onTap: () {
                    context.go('/doctor_profile');
                  },
                  child: DoctorListItem(
                    doctorName: "Dr. Fatema Tuz Zuhura",
                    doctorDesg: "Medicine",
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
                    doctorName: "Dr. Faiza Rahman",
                    doctorDesg: "Cardiologist",
                    imageAddress:
                        "https://images.squarespace-cdn.com/content/v1/631ba8eed2196a6795698665/526ead38-1ad2-4228-8244-d5b12c014e53/2022-08-04-KP-Bluck-Scott-0031.jpg",
                  ),
                ),
                SizedBox(height: 15),
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

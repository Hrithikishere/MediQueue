import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';
import 'package:medi_queue/framework/helpers/constants/data/doctors.dart';
import 'package:medi_queue/util/common/bottomAppBar.dart';
import 'package:medi_queue/util/common/topAppbar.dart';
import 'package:medi_queue/util/doctor/doctor_list_item.dart';

class MedicineListPage extends StatelessWidget {
  const MedicineListPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Doctor> medicineList = [];
    for (Doctor doctor in doctorList) {
      if (doctor.desg == "Medicine") {
        medicineList.add(doctor);
        // print(doctor.name);
      }
    }
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
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
              SizedBox(
                height: MediaQuery.of(context).size.height - 240,
                child: ListView.builder(
                  itemCount: medicineList.length,
                  itemBuilder: (context, index) {
                    return DoctorListItem(
                      doctor: medicineList[index],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBars(
        value: 0,
      ),
    );
  }
}

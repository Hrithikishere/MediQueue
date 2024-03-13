import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';
import 'package:medi_queue/framework/helpers/constants/data/doctors.dart';
import 'package:medi_queue/providers/doctor/allDoctorProvider.dart';
import 'package:medi_queue/util/common/bottomAppBar.dart';
import 'package:medi_queue/util/common/topAppbar.dart';
import 'package:medi_queue/util/doctor/doctor_list_item.dart';

class AllDoctorsListPage extends ConsumerWidget {
  AllDoctorsListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String? dropdownValue;
    // void filterList(String docDesg) {
    //   List<Doctor> filteredList = [];
    //   for (Doctor doctor in doctorList) {
    //     if (doctor.desg == docDesg) {
    //       filteredList.add(doctor);
    //       // print(doctor.name);
    //     }
    //     // setState() {

    //     // }
    //   }
    // }

    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopAppBar(
                title: "All Doctors",
                onPressed: () {
                  context.pop(context);
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
                  onChanged: (value) {
                    ref
                        .read(doctorProvider.notifier)
                        .setInputName(value.toString());
                  },
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

              const SizedBox(height: 15),
              Container(
                  // color: glassyColor,
                  height: 60,
                  child: DropdownButtonFormField<String>(
                    style: TextStyle(color: textLightColor),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      fillColor: glassyColor,
                      filled: true,
                    ),
                    hint: Text(
                      "Select Category",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                            fontSize: 15,
                          ),
                    ),
                    value: dropdownValue,
                    dropdownColor: primaryColor,
                    onChanged: (value) {
                      // print(value.toString());
                      // filterList(newValue!);
                      // print(
                      //     "---->>>>>$value + ${dropdownValue.toString()}---<<<<");
                      // print("---------------------------------------");
                      ref
                          .read(doctorProvider.notifier)
                          .setDesignation(value.toString());
                    },
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

              const SizedBox(height: 15),
              Center(
                child: Text(
                  "Find the best for you",
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(fontSize: 17),
                ),
              ),
              const SizedBox(height: 15),
              Flexible(
                // flex: 6,
                child: Consumer(
                  builder: (context, ref, child) {
                    var doctorsList = ref.watch(doctorProvider);
                    return ListView.builder(
                      itemCount: doctorsList.length,
                      itemBuilder: (context, index) {
                        return DoctorListItem(
                          doctor: doctorsList[index],
                        );
                      },
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

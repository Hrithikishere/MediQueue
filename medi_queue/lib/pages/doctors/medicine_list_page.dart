import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';
import 'package:medi_queue/framework/helpers/constants/data/doctors.dart';
import 'package:medi_queue/providers/doctor/medicineProvider.dart';
import 'package:medi_queue/util/common/bottomAppBar.dart';
import 'package:medi_queue/util/common/topAppbar.dart';
import 'package:medi_queue/util/doctor/doctor_list_item.dart';

class MedicineListPage extends ConsumerWidget {
  const MedicineListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                  context.pop();
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
                        .read(medicineProvider.notifier)
                        .filterListByMedicineName(value);
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
              const SizedBox(height: 15),
              Flexible(
                flex: 5,
                child: Consumer(
                  builder: (context, ref, child) {
                    var medicinesList = ref.watch(medicineProvider);

                    return ListView.builder(
                      itemCount: medicinesList.length,
                      itemBuilder: (context, index) {
                        return DoctorListItem(
                          doctor: medicinesList[index],
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

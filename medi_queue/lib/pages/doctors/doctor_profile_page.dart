import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';
import 'package:medi_queue/framework/helpers/constants/data/doctors.dart';
import 'package:medi_queue/util/common/bottomAppBar.dart';
import 'package:medi_queue/util/common/text_description_card.dart';
import 'package:medi_queue/util/common/topAppbar.dart';
import 'package:medi_queue/util/doctor/doctor_profile_card.dart';

class DoctorProfilePage extends StatelessWidget {
  DoctorProfilePage({required this.id, super.key});
  int id;

  @override
  Widget build(BuildContext context) {
    Doctor doctor = doctorList.where((doctor) => doctor.id == id).first;
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
                  title: "Doctor Profile",
                  onPressed: () {
                    context.go('/home');
                  },
                ),
                DoctorProfileCard(
                  name: doctor.name,
                  desg: doctor.desg,
                  imageAddress: doctor.imageAddress,
                  rating: doctor.rating,
                  experience: doctor.experienceLevel,
                ),
                //Biography
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "Biography",
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
                TextDescriptionCard(
                  description: doctor.biography,
                  containerHeight: 200,
                ),
                //Qualification
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "Qualifications",
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
                TextDescriptionCard(
                  description: doctor.qualificationsDetails,
                  containerHeight: 150,
                ),
                //Information
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "Information",
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
                TextDescriptionCard(
                  description: doctor.information,
                  containerHeight: 150,
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

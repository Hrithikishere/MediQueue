import 'package:flutter/material.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';
import 'package:medi_queue/util/common/bottomAppBar.dart';
import 'package:medi_queue/util/common/text_description_card.dart';
import 'package:medi_queue/util/common/topAppbar.dart';
import 'package:medi_queue/util/doctor_profile_card.dart';

class DoctorProfilePage extends StatelessWidget {
  const DoctorProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
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
                ),
                DoctorProfileCard(),
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
                  description:
                      "The digestive system speaks a language I understand. After years of training (MBBS, FCPS, MD), I decipher its whispers to diagnose and treat liver, pancreatic, and other gut issues. At Enam Medical College & Hospital, I double down: guiding patients as a Professor and navigating their digestive journeys as a Gastroenterologist. Whether it's chronic pain, liver concerns, or gut health, every victory fuels my passion. Empowering individuals to reclaim their well-being is my mission.",
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
                  description:
                      "Qualifications:MBBS, MD(Oncology)\nSpecialty: Cancer Specialist\nLanguage Spoken: Bangla, English\nDesignation: Assistant Professor\nInstitute: National Institute of Cancer Research & Hospital, Mohakhali, Dhaka",
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
                  description:
                      "Chamber Time: Saturday to Thursday (4.00PM to 5.00 PM)\nOff Day: Friday\nFloor Number: 4th floor\nRoom Number:506\nBranch Name & Address:\nIbn Sina Diagnostic & Consultation Center, uttara\nHouse#52, Garib-E-Newaz Avenue, Sector#13, Uttara, Dhaka-1230",
                  containerHeight: 150,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBars(),
    );
  }
}

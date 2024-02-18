import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';
import 'package:medi_queue/util/appointment/appointment_card.dart';
import 'package:medi_queue/util/common/bottomAppBar.dart';
import 'package:medi_queue/util/common/topAppbar.dart';
import 'package:medi_queue/util/appointment/next_appointment_card.dart';

class AppointmentsPage extends StatelessWidget {
  const AppointmentsPage({super.key});

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
                  title: "Appointments",
                  onPressed: () {
                    context.go('/home');
                  },
                ),
                InkWell(
                  child: NextAppointmentCard(),
                  onTap: () {
                    context.go('/appointment_details');
                  },
                ),
                SizedBox(height: 10),
                Text(
                  "Appointments",
                  textAlign: TextAlign.left,
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    context.go('/appointment_details');
                  },
                  child: AppointmentCard(
                    doctorName: "Dr. Mohammad Ullah",
                    doctorType: "Dentist",
                    date: "25",
                    month: "Jan",
                    time: "9.45 PM",
                    buttonName: "Missed",
                    buttonColor: Colors.red,
                  ),
                ),
                InkWell(
                  onTap: () {
                    context.go('/appointment_details');
                  },
                  child: AppointmentCard(
                    doctorName: "Dr. Mohammad Ullah",
                    doctorType: "Dentist",
                    date: "10",
                    month: "Jan",
                    time: "9.45 PM",
                    buttonName: "Done",
                    buttonColor: Colors.green,
                  ),
                ),
                InkWell(
                  onTap: () {
                    context.go('/appointment_details');
                  },
                  child: AppointmentCard(
                    doctorName: "Dr. Rakib Islam",
                    doctorType: "Medicine",
                    date: "06",
                    month: "Jan",
                    time: "4.45 PM",
                    buttonName: "Done",
                    buttonColor: Colors.green,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBars(
        value: 2,
      ),
    );
  }
}

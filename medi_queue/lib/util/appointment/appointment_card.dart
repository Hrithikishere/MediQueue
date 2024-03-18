import 'package:flutter/material.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';
import 'package:medi_queue/framework/helpers/constants/data/doctors.dart';
import 'package:intl/intl.dart';

import '../../framework/helpers/constants/data/appointments.dart';

class AppointmentCard extends StatelessWidget {
  AppointmentCard({required this.appointmentId, super.key});
  int appointmentId;
  @override
  Widget build(BuildContext context) {
    Color buttonColor = Colors.transparent;
    String buttonName = "Pending";
    var appointmentInfo =
        appointmentList.singleWhere((element) => element.id == appointmentId);
    String day = DateFormat('dd').format(appointmentInfo.date);
    String monthName = DateFormat('MMM').format(appointmentInfo.date);

    if (appointmentInfo.status == "Approved") {
      buttonColor = Colors.green;
      buttonName = "Approved";
    } else if (appointmentInfo.status == "Missed") {
      buttonColor = Colors.red;
      buttonName = "Missed";
    } else if (appointmentInfo.status == "Done") {
      buttonColor = Colors.blue;
      buttonName = "Done";
    }
    Doctor doctorInfo = doctorList.singleWhere(
        (element) => element.id == appointmentInfo.appointedDoctorId);

    return Container(
      height: 120,
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
          color: glassyColor, borderRadius: BorderRadius.circular(10)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 3,
            child: Row(
              children: [
                //date
                Container(
                  width: 80,
                  margin: const EdgeInsets.only(right: 10),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: secondaryColor, width: 1),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Text(
                          day,
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(
                                fontSize: 30,
                              ),
                        ),
                      ),
                      Text(
                        monthName,
                        style:
                            Theme.of(context).textTheme.displayLarge!.copyWith(
                                  fontSize: 15,
                                ),
                      ),
                    ],
                  ),
                ),
                //name & title
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(top: 2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 3),
                          child: Text(
                            doctorInfo.name,
                            maxLines: 3,
                            softWrap: true,
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          doctorInfo.desg,
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(
                                fontSize: 11,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          //time and status
          Flexible(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.only(top: 2),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      appointmentInfo.time,
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                            fontSize: 12,
                          ),
                    ),
                    //status button
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 5),
                      decoration: BoxDecoration(
                        color: buttonColor,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text(
                        buttonName,
                        style:
                            Theme.of(context).textTheme.displayLarge!.copyWith(
                                  fontSize: 12,
                                ),
                      ),
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}

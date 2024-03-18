import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';
import 'package:medi_queue/framework/helpers/constants/data/appointments.dart';
import 'package:medi_queue/framework/helpers/constants/data/doctors.dart';
import 'package:intl/intl.dart';

import '../../providers/login_register/loginProvider.dart';

class NextAppointmentCard extends ConsumerWidget {
  NextAppointmentCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Consumer(
      builder: (context, ref, child) {
        try {
          var userId = ref.watch(authProvider.notifier).username();
          List<Appointment> allAppointment = [];
          for (var appointment in appointmentList) {
            if (appointment.patientId == userId) {
              allAppointment.add(appointment);
            }
          }
          allAppointment.sort((a, b) => a.date.compareTo(b.date));

          var doctorInfo = doctorList.firstWhere(
              (element) => element.id == allAppointment[0].appointedDoctorId);
          String appointmentDate =
              DateFormat('dd MMM yyyy, h.mm a').format(allAppointment[0].date);
          return Container(
            height: 170,
            decoration: BoxDecoration(
                color: glassyColor, borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //upper side
                Flexible(
                  flex: 11,
                  child: Container(
                    padding: EdgeInsets.only(left: 10, top: 15),
                    decoration: BoxDecoration(
                        color: glassyColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "NEXT APPOINTMENT",
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(fontSize: 12, color: secondaryColor),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        //date and time
                        Text(
                          appointmentDate,
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                //bottom side
                Flexible(
                  flex: 9,
                  child: Container(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //left side
                        Container(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  doctorInfo.name,
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayLarge!
                                      .copyWith(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  doctorInfo.desg,
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayLarge!
                                      .copyWith(
                                        fontSize: 12,
                                      ),
                                ),
                              ]),
                        ),
                        //right side
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: secondaryColor,
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(50)),
                          child: IconButton(
                            onPressed: () {
                              context.push('/appointment_details');
                            },
                            icon: Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        } catch (e) {
          print("object");
          return Container();
        }
      },
    );
  }
}

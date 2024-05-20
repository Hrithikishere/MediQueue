import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';
import 'package:medi_queue/util/common/bottomAppBar.dart';
import 'package:medi_queue/util/common/topAppbar.dart';
import 'package:medi_queue/util/icon_info_card.dart';

import '../../framework/helpers/constants/data/appointments.dart';
import '../../framework/helpers/constants/data/doctors.dart';

class AppointmentDetails extends StatelessWidget {
  AppointmentDetails({required this.id, super.key});

  int id;

  @override
  Widget build(BuildContext context) {
    Appointment appointmentInfo =
        appointmentList.singleWhere((element) => element.id == id);

    Doctor doctorInfo = doctorList.singleWhere(
        (element) => element.id == appointmentInfo.appointedDoctorId);

    String appointmentDate =
        DateFormat('dd MMM yyyy, h.mm a').format(appointmentInfo.date);

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
                  title: "Appointment Details",
                  onPressed: () {
                    context.pop();
                  },
                ),
                Text(
                  "Appointed Doctor",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis, // Handle overflow gracefully
                  softWrap: true,
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),

                //doctor card
                InkWell(
                  onTap: () {
                    context.push('/doctor_profile/${doctorInfo.id}');
                  },
                  child: Container(
                    height: 100,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: glassyColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ClipOval(
                          child: CachedNetworkImage(
                            imageUrl: doctorInfo.imageAddress,
                            placeholder: (context, url) =>
                                const CircularProgressIndicator(),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                            maxHeightDiskCache:
                                150, // Set the maximum height for disk-cached images
                            height: 65,
                            width: 65,
                            fit: BoxFit.cover,
                          ),
                        ),
                        //doctor name category rating
                        Container(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                doctorInfo.name,
                                maxLines: 2,
                                overflow: TextOverflow
                                    .ellipsis, // Handle overflow gracefully
                                softWrap: true,
                                style: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .copyWith(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                              ),
                              Text(
                                doctorInfo.desg,
                                style: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .copyWith(
                                      fontSize: 13,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //ratings
                const SizedBox(height: 15),
                Text(
                  "Other Details",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis, // Handle overflow gracefully
                  softWrap: true,
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 15),
                IconInfoCard(
                    heading: "Appointment ID",
                    details: appointmentInfo.id.toString(),
                    iconData: Icons.info_rounded),
                const SizedBox(height: 10),

                IconInfoCard(
                    heading: "Status",
                    details: appointmentInfo.status,
                    iconData: Icons.done),
                const SizedBox(height: 10),

                IconInfoCard(
                    heading: "Date and Time",
                    details: appointmentDate,
                    iconData: Icons.timer),
                const SizedBox(height: 10),

                IconInfoCard(
                    heading: "Serial",
                    details: appointmentInfo.serial.toString(),
                    iconData: Icons.list_rounded),
                const SizedBox(height: 10),

                IconInfoCard(
                    heading: "Room No.",
                    details: appointmentInfo.roomNumber.toString(),
                    iconData: Icons.door_front_door),
                const SizedBox(height: 10),

                IconInfoCard(
                    heading: "Type",
                    details: appointmentInfo.patientType,
                    iconData: Icons.people_outline_outlined),
                const SizedBox(height: 10),

                IconInfoCard(
                    heading: "Hotline",
                    details: appointmentInfo.hotlineNumber,
                    iconData: Icons.phone),
                const SizedBox(height: 10),

                IconInfoCard(
                    heading: "Location",
                    details: appointmentInfo.location,
                    iconData: Icons.location_history),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBars(value: 0),
    );
  }
}

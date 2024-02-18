import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';
import 'package:medi_queue/util/common/bottomAppBar.dart';
import 'package:medi_queue/util/common/topAppbar.dart';
import 'package:medi_queue/util/icon_info_card.dart';

class AppointmentDetails extends StatelessWidget {
  const AppointmentDetails({super.key});

  @override
  Widget build(BuildContext context) {
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
                    context.go('/appointments');
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
                SizedBox(height: 10),

                //doctor card
                InkWell(
                  onTap: () {
                    context.go('/doctor_profile');
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
                        Flexible(
                          flex: 2,
                          child: Container(
                            padding: EdgeInsets.only(bottom: 2, top: 2),
                            child: ClipOval(
                              child: CachedNetworkImage(
                                imageUrl:
                                    'https://static.vecteezy.com/system/resources/thumbnails/028/287/384/small/a-mature-indian-male-doctor-on-a-white-background-ai-generated-photo.jpg',
                                placeholder: (context, url) =>
                                    const CircularProgressIndicator(),
                                errorWidget: (context, url, error) =>
                                    const Icon(Icons.error),
                                maxHeightDiskCache:
                                    100, // Set the maximum height for disk-cached images
                                height: 65,
                                width: 70,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        //doctor name category rating
                        Flexible(
                          flex: 8,
                          child: Container(
                            padding: EdgeInsets.only(left: 10, top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Dr. Md. Sayeedul Islam",
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
                                  "Dentist",
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
                        ),
                      ],
                    ),
                  ),
                ),
                //ratings
                SizedBox(height: 15),
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
                SizedBox(height: 15),
                IconInfoCard(
                    heading: "Appointment ID",
                    details: "A322655",
                    iconData: Icons.info_rounded),
                SizedBox(height: 10),

                IconInfoCard(
                    heading: "Status",
                    details: "Approved",
                    iconData: Icons.done),
                SizedBox(height: 10),

                IconInfoCard(
                    heading: "Date and Time",
                    details: "25 Jan 2024, 8.00 PM",
                    iconData: Icons.timer),
                SizedBox(height: 10),

                IconInfoCard(
                    heading: "Serial",
                    details: "05",
                    iconData: Icons.list_rounded),
                SizedBox(height: 10),

                IconInfoCard(
                    heading: "Room No.",
                    details: "512",
                    iconData: Icons.door_front_door),
                SizedBox(height: 10),

                IconInfoCard(
                    heading: "Type",
                    details: "New Patient",
                    iconData: Icons.people_outline_outlined),
                SizedBox(height: 10),

                IconInfoCard(
                    heading: "Hotline",
                    details: "09610009614",
                    iconData: Icons.phone),
                SizedBox(height: 10),

                IconInfoCard(
                    heading: "Location",
                    details:
                        "Ibn Sina Diagnostic & Consultation , \nuttara,  Garib-E-Newaz Avenue, \nSector#13, Uttara, Dhaka-1230",
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

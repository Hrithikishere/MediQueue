import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';
import 'package:medi_queue/util/common/bottomAppBar.dart';
import 'package:medi_queue/util/common/text_description_card.dart';
import 'package:medi_queue/util/common/topAppbar.dart';

class AppointmentCreatePage extends StatelessWidget {
  const AppointmentCreatePage({super.key});

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
                    title: "Create Appointment",
                    onPressed: () {
                      context.go('/home');
                    }),
                //doctor card
                Container(
                  height: 100,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: glassyColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                                  CircularProgressIndicator(),
                              errorWidget: (context, url, error) =>
                                  Icon(Icons.error),
                              maxHeightDiskCache:
                                  200, // Set the maximum height for disk-cached images
                              height: 100,
                              width: 100,
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
                const SizedBox(height: 10),
                //information
                Text(
                  "Information ",
                  textAlign: TextAlign.left,
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                TextDescriptionCard(
                    description:
                        "Information Chamber Time: Saturday to Thursday (4.00 PM to 8.00 PM) Off Day: Friday Floor Number: 4th floor Room Number: 514 Branch Name & Address: Ibn Sina Diagnostic & Consultation Center, uttara, House#52, Garib-E-Newaz Avenue, Sector#13, Uttara, Dhaka-1230",
                    containerHeight: 200),
                const SizedBox(height: 10),
                //date
                Container(
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(10.0), // Border radius
                      color: glassyColor),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Select Date',
                      hintStyle: TextStyle(color: textLightColor),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            10.0), // Set border radius here
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(
                            10.0), // Set border radius here
                      ),
                    ),
                    onTap: () async {
                      DateTime? selectedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2100),
                      );

                      if (selectedDate != null) {}
                    },
                  ),
                ),
                const SizedBox(height: 10),
                //select category
                Container(
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(10.0), // Border radius
                        color: glassyColor),
                    // height: 60,
                    child: DropdownButtonFormField<String>(
                      style: TextStyle(color: textLightColor),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      hint: Text(
                        "Select Category",
                        textAlign: TextAlign.center,
                        style:
                            Theme.of(context).textTheme.displayLarge!.copyWith(
                                  fontSize: 15,
                                ),
                      ),
                      // value: dropdownValue,
                      dropdownColor: primaryColor,

                      onChanged: (String? newValue) {},
                      items: <String>[
                        'New',
                        'Old',
                        'Report Checkup',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    )),

                const SizedBox(height: 10),
                //problem
                Text(
                  "Explain Problem (Briefly) ",
                  textAlign: TextAlign.left,
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 150,
                  padding: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: glassyColor,
                    // border: Border.all(color: Colors.grey), // Border design
                    borderRadius: BorderRadius.circular(10.0), // Border radius
                  ),
                  child: TextField(
                    maxLines: 5,
                    style: TextStyle(color: textLightColor),
                    decoration: InputDecoration.collapsed(
                      hintText: 'Tell here',
                      fillColor: glassyColor,
                      hintStyle: TextStyle(color: textLightColor),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: secondaryColor,
                      ),
                      onPressed: () {
                        context.go('/appointments');
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "Set Apointment",
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(
                                fontSize: 13,
                              ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBars(value: 0),
    );
  }
}

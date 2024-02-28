import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';
import 'package:medi_queue/util/common/bottomAppBar.dart';
import 'package:medi_queue/util/common/text_description_card.dart';
import 'package:medi_queue/util/common/topAppbar.dart';
import 'package:medi_queue/util/doctor/doctor_profile_card.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

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
                  title: "Profile",
                  onPressed: () {
                    context.pop();
                  },
                ),
                //profile card
                Container(
                  padding: EdgeInsets.all(15),
                  height: 220,
                  decoration: BoxDecoration(
                      color: glassyColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //left info
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //doctor name and category
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Md. Abdur Rouf",
                                    softWrap: true,
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .copyWith(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    "23 Years Old",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .copyWith(
                                          fontSize: 14,
                                        ),
                                  ),
                                  //Ratings
                                ],
                              ),
                            ),

                            //Weight and Height
                            Container(
                              child: Column(
                                children: [
                                  //ratings
                                  Row(
                                    children: [
                                      //icon
                                      Container(
                                        padding: EdgeInsets.all(7),
                                        margin: EdgeInsets.only(right: 10),
                                        decoration: BoxDecoration(
                                            color: secondaryColor,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: Icon(
                                          Icons.monitor_weight_outlined,
                                          color: textLightColor,
                                        ),
                                      ),

                                      //rating value
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Weight",
                                            style: Theme.of(context)
                                                .textTheme
                                                .displayLarge!
                                                .copyWith(
                                                  fontSize: 10,
                                                  color: textDimColor,
                                                ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "75 KGs",
                                            style: Theme.of(context)
                                                .textTheme
                                                .displayLarge!
                                                .copyWith(
                                                  fontSize: 12,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  //Experience
                                  Row(
                                    children: [
                                      //icon
                                      Container(
                                        padding: EdgeInsets.all(7),
                                        margin: EdgeInsets.only(right: 10),
                                        decoration: BoxDecoration(
                                            color: secondaryColor,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: Icon(
                                          Icons.height_outlined,
                                          color: textLightColor,
                                        ),
                                      ),

                                      //experience value
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Height",
                                            style: Theme.of(context)
                                                .textTheme
                                                .displayLarge!
                                                .copyWith(
                                                  fontSize: 10,
                                                  color: textDimColor,
                                                ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "182 CM",
                                            style: Theme.of(context)
                                                .textTheme
                                                .displayLarge!
                                                .copyWith(
                                                  fontSize: 12,
                                                ),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      //right image and button
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipOval(
                            child: CachedNetworkImage(
                              imageUrl:
                                  'https://images.squarespace-cdn.com/content/v1/631ba8eed2196a6795698665/e35c4b20-b80a-412f-8048-8ad57c07bd79/2022-02-10-Trinet-Kinh-5690-OneDrive+-+Social+Media.jpg',
                              placeholder: (context, url) =>
                                  CircularProgressIndicator(),
                              errorWidget: (context, url, error) =>
                                  Icon(Icons.error),
                              maxHeightDiskCache:
                                  300, // Set the maximum height for disk-cached images
                              height: 170,
                              width: 170,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                //Biography
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "Personal Information",
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
                TextDescriptionCard(
                  description:
                      "Date of birth : 9 Nov 2000\nPlace of birth: Rajbari\nNationality: Bangladesh Sex: Male\nOccupation: Engineer\nContact: 01712-135457\nAddress: House No. 113, Thana Road, Uttar Badda, Dhaka -1212, Bangladesh",
                  containerHeight: 200,
                ),
                //Qualification
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "Medical History",
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
                TextDescriptionCard(
                  description:
                      "Presenting complaint: Nausea, palpitations and cough with white/brown sputum for past week. Unable to concentrate and ‘feeling rough’. Very anxious and agitated. Tachycardia. Patient experiencing suicidal ideation.Past Medical History: Depression, COPD, Type 2 diabetes, Hypertension, Personality disorder.Social History: Lives alone in flat. Independent. Has smoked about 20 cigarettes per day for over 20 years. No alcohol.Impression/Diagnosis: Possible adverse reaction to quetiapine. Lower respiratory tract infection (LRTI). Agranulocytosis.Plan: Liaise with psychiatry team to review medicines, treat LRTI with doxycycline, monitor bowels, ECG.",
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

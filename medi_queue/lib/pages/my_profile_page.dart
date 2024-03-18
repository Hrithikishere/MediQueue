import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';
import 'package:medi_queue/framework/helpers/constants/data/user_profile.dart';
import 'package:medi_queue/providers/login_register/loginProvider.dart';
import 'package:medi_queue/util/common/bottomAppBar.dart';
import 'package:medi_queue/util/common/text_description_card.dart';
import 'package:medi_queue/util/common/topAppbar.dart';
import 'package:medi_queue/util/doctor/doctor_profile_card.dart';

class MyProfilePage extends ConsumerWidget {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(15),
            child: Consumer(builder: (context, ref, child) {
              var id = ref.watch(authProvider.notifier).id;
              UserProfile userInfo =
                  usersList.firstWhere((user) => user.id == id);
              return Column(
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
                              //name and age
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      userInfo.name,
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
                                      "${userInfo.age} Years Old",
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
                                              "${userInfo.weight} KGs",
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
                                              userInfo.height.toString() +
                                                  " cm",
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
                                imageUrl: userInfo.imageAddress,
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
                    description: userInfo.personalInformation,
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
                    description: userInfo.medicalHistory,
                    containerHeight: 150,
                  ),
                ],
              );
            }),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBars(
        value: 0,
      ),
    );
  }
}

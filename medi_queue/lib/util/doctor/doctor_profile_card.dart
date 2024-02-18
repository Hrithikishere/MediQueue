import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';

class DoctorProfileCard extends StatelessWidget {
  const DoctorProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      height: 220,
      decoration: BoxDecoration(
          color: glassyColor, borderRadius: BorderRadius.circular(10)),
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
                        "Dr. Md. Sayeedul",
                        softWrap: true,
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(
                                fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Cancer Specialist",
                        style:
                            Theme.of(context).textTheme.displayLarge!.copyWith(
                                  fontSize: 14,
                                ),
                      ),
                      //Ratings
                    ],
                  ),
                ),

                //Experience and Ratings
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
                                borderRadius: BorderRadius.circular(5)),
                            child: Icon(
                              Icons.star,
                              color: textLightColor,
                            ),
                          ),

                          //rating value
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Ratings",
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
                                "4.9 From 5",
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
                      SizedBox(
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
                                borderRadius: BorderRadius.circular(5)),
                            child: Icon(
                              Icons.group_outlined,
                              color: textLightColor,
                            ),
                          ),

                          //experience value
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Experience",
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
                                "5 Years",
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
              CircleAvatar(
                radius: 55,
                backgroundImage: NetworkImage(
                  'https://static.vecteezy.com/system/resources/thumbnails/028/287/384/small/a-mature-indian-male-doctor-on-a-white-background-ai-generated-photo.jpg',
                ),
              ),
              ElevatedButton(
                style:
                    ElevatedButton.styleFrom(backgroundColor: secondaryColor),
                onPressed: () {
                  context.go('/appointment_create');
                },
                child: Text(
                  "Appointment",
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        fontSize: 12,
                      ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

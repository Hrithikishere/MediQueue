import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';
import 'package:medi_queue/framework/helpers/constants/data/doctors.dart';

class DoctorProfileCard extends StatelessWidget {
  DoctorProfileCard({required this.id, super.key});
  int id;
  @override
  Widget build(BuildContext context) {
    Doctor doctor = doctorList.where((doctor) => doctor.id == id).first;
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
                        doctor.name,
                        softWrap: true,
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(
                                fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        doctor.desg,
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
                                "${doctor.rating} From 5",
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
                                "${doctor.experienceLevel} Years",
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
                  imageUrl: doctor.imageAddress,
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                  maxHeightDiskCache:
                      300, // Set the maximum height for disk-cached images
                  height: 110,
                  width: 110,
                  fit: BoxFit.cover,
                ),
              ),
              ElevatedButton(
                style:
                    ElevatedButton.styleFrom(backgroundColor: secondaryColor),
                onPressed: () {
                  context.push('/appointment_create/${doctor.id}');
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

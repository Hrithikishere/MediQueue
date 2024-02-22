import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';
import 'package:medi_queue/framework/helpers/constants/data/doctors.dart';

class DoctorListItem extends StatelessWidget {
  DoctorListItem({required this.doctor, super.key});
  Doctor doctor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          color: glassyColor, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //upper side
          Flexible(
            flex: 11,
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: glassyColor, borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //doctor name category rating
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          doctor.name,
                          maxLines: 2,
                          overflow: TextOverflow
                              .ellipsis, // Handle overflow gracefully
                          softWrap: true,
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 1),
                        Text(
                          doctor.desg,
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(
                                fontSize: 13,
                              ),
                        ),
                        SizedBox(height: 1),
                        //Ratings
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "${doctor.rating}",
                              style: Theme.of(context)
                                  .textTheme
                                  .displayLarge!
                                  .copyWith(
                                    fontSize: 13,
                                  ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 3, bottom: 2),
                              child: Icon(
                                Icons.star,
                                color: textLightColor,
                                size: 13,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  ClipOval(
                    child: CachedNetworkImage(
                      imageUrl: doctor.imageAddress,
                      placeholder: (context, url) =>
                          const CircularProgressIndicator(),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                      maxHeightDiskCache:
                          150, // Set the maximum height for disk-cached images
                      height: 70,
                      width: 70,
                      fit: BoxFit.cover,
                    ),
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
                    child: Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //qualifications
                            Text(
                              doctor.qualifications,
                              maxLines: 3,
                              overflow: TextOverflow
                                  .ellipsis, // Handle overflow gracefully
                              softWrap: true,
                              style: Theme.of(context)
                                  .textTheme
                                  .displayLarge!
                                  .copyWith(fontSize: 12, height: 1.3),
                            ),
                          ]),
                    ),
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
                        context.go('/doctor_profile/${doctor.id}');
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
  }
}

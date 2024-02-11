import 'package:flutter/material.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';

class DoctorListItem extends StatelessWidget {
  const DoctorListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
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
                          "Dr. Md. Sayeedul Islam",
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
                        SizedBox(height: 5),
                        Text(
                          "Dentist",
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(
                                fontSize: 13,
                              ),
                        ),
                        SizedBox(height: 5),
                        //Ratings
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "4.9",
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
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: NetworkImage(
                      'https://static.vecteezy.com/system/resources/thumbnails/028/287/384/small/a-mature-indian-male-doctor-on-a-white-background-ai-generated-photo.jpg',
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
                              "FCPS, PGT, BDS, (DDC) \n(EX)Associate Professor & Head \nSpeciality in Orthodontics & Cosmetic dentistry",
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
                      onPressed: () {},
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

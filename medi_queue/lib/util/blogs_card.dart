import 'package:flutter/material.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';
import 'package:medi_queue/framework/helpers/constants/data/doctors.dart';

class BlogsCard extends StatelessWidget {
  BlogsCard(
      {required this.id,
      required this.title,
      required this.doctorId,
      required this.postedTime,
      super.key});

  int id;
  String title;
  int doctorId;
  String postedTime;

  @override
  Widget build(BuildContext context) {
    Doctor doctor = doctorList.where((doctor) => doctor.id == doctorId).first;

    return Container(
      padding: EdgeInsets.all(20),
      // margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
          color: glassyColor, borderRadius: BorderRadius.circular(10)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          title,
          style: Theme.of(context).textTheme.displayLarge!.copyWith(
                fontSize: 18,
              ),
        ),
        const SizedBox(
          height: 18,
        ),
        Text(
          doctor.name,
          style: Theme.of(context).textTheme.displayLarge!.copyWith(
                fontSize: 15,
              ),
        ),
        const SizedBox(
          height: 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              doctor.desg,
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    fontSize: 10,
                  ),
            ),
            Text(
              postedTime,
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    fontSize: 10,
                  ),
            ),
          ],
        )
      ]),
    );
  }
}

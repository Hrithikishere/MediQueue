import 'package:flutter/material.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';

class BlogsCard extends StatelessWidget {
  const BlogsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
          color: glassyColor, borderRadius: BorderRadius.circular(10)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Why Men Should Stay on Top of Health Screenings",
          style: Theme.of(context).textTheme.displayLarge!.copyWith(
                fontSize: 18,
              ),
        ),
        const SizedBox(
          height: 18,
        ),
        Text(
          "Dr. Daniel Lee",
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
              "Urologist",
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    fontSize: 10,
                  ),
            ),
            Text(
              "24 Jan 2024, 9.30 PM",
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

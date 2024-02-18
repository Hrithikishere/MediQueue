import 'package:flutter/material.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';

class CategoryCard extends StatelessWidget {
  final String cardName;
  VoidCallback onPressed;
  final IconData iconData;
  CategoryCard({
    required this.iconData,
    required this.cardName,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 130,
        margin: EdgeInsets.only(right: 10),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: glassyColor, borderRadius: BorderRadius.circular(10)),
        child: InkWell(
          onTap: onPressed,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                iconData,
                size: 60,
                color: secondaryColor,
              ),
              const SizedBox(
                height: 14,
              ),
              Text(
                cardName,
                style: Theme.of(context)
                    .textTheme
                    .displayLarge!
                    .copyWith(fontSize: 10),
              ),
            ],
          ),
        ));
  }
}

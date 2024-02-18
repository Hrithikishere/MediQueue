import 'package:flutter/material.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';

class CategoryListItem extends StatelessWidget {
  const CategoryListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
          color: glassyColor, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          //Icon
          Flexible(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(left: 15),
              child: Icon(
                Icons.aspect_ratio,
                color: secondaryColor,
              ),
            ),
          ),
          //Dentist
          Expanded(
            flex: 9,
            child: Text(
              "Dentist",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    fontSize: 16,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}

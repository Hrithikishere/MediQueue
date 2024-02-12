import 'package:flutter/material.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';

class BottomAppBars extends StatelessWidget {
  const BottomAppBars({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 70,
            width: 70,
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: glassyColor, borderRadius: BorderRadius.circular(50)),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home_filled,
                size: 30,
                color: secondaryColor,
              ),
            ),
          ),
          Container(
            height: 65,
            width: 65,
            margin: EdgeInsets.only(bottom: 15, left: 15, right: 15),
            decoration: BoxDecoration(
                color: glassyColor, borderRadius: BorderRadius.circular(50)),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.view_list_outlined,
                size: 30,
                color: secondaryColor,
              ),
            ),
          ),
          Container(
            height: 65,
            width: 65,
            margin: EdgeInsets.only(bottom: 15, left: 15, right: 15),
            decoration: BoxDecoration(
                color: secondaryColor, borderRadius: BorderRadius.circular(50)),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.tips_and_updates,
                size: 30,
                color: primaryColor,
              ),
            ),
          ),
          Container(
            height: 65,
            width: 65,
            margin: EdgeInsets.only(bottom: 15, left: 15, right: 15),
            decoration: BoxDecoration(
                color: glassyColor, borderRadius: BorderRadius.circular(50)),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                size: 30,
                color: secondaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

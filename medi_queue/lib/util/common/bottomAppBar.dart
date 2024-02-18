import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';

class BottomAppBars extends StatelessWidget {
  BottomAppBars({required this.value, super.key});

  int value;
  Color homeIconColor = secondaryColor;
  Color homeBackColor = glassyColor;

  Color appointIconColor = secondaryColor;
  Color appointBackColor = glassyColor;

  Color blogIconColor = secondaryColor;
  Color blogBackColor = glassyColor;

  Color moreIconColor = secondaryColor;
  Color moreBackColor = glassyColor;

  @override
  Widget build(BuildContext context) {
    if (value == 1) {
      homeIconColor = primaryColor;
      homeBackColor = secondaryColor;
    } else if (value == 2) {
      appointIconColor = primaryColor;
      appointBackColor = secondaryColor;
    } else if (value == 3) {
      blogIconColor = primaryColor;
      blogBackColor = secondaryColor;
    } else if (value == 4) {
      moreIconColor = primaryColor;
      moreBackColor = secondaryColor;
    } else {}

    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //home
          Container(
            height: 70,
            width: 70,
            margin: EdgeInsets.only(bottom: 15, left: 15),
            decoration: BoxDecoration(
                color: homeBackColor, borderRadius: BorderRadius.circular(50)),
            child: IconButton(
              onPressed: () {
                context.go('/home');
              },
              icon: Icon(
                Icons.home_filled,
                size: 30,
                color: homeIconColor,
              ),
            ),
          ),
          //appoint
          Container(
            height: 65,
            width: 65,
            margin: EdgeInsets.only(bottom: 15, left: 15),
            decoration: BoxDecoration(
                color: appointBackColor,
                borderRadius: BorderRadius.circular(50)),
            child: IconButton(
              onPressed: () {
                context.go('/appointments');
              },
              icon: Icon(
                Icons.view_list_outlined,
                size: 30,
                color: appointIconColor,
              ),
            ),
          ),
          //blogs
          Container(
            height: 65,
            width: 65,
            margin: EdgeInsets.only(
              bottom: 15,
              left: 15,
            ),
            decoration: BoxDecoration(
                color: blogBackColor, borderRadius: BorderRadius.circular(50)),
            child: IconButton(
              onPressed: () {
                context.go('/blogs');
              },
              icon: Icon(
                Icons.tips_and_updates,
                size: 30,
                color: blogIconColor,
              ),
            ),
          ),
          //more
          Container(
            height: 65,
            width: 65,
            margin: EdgeInsets.only(bottom: 15, left: 15, right: 15),
            decoration: BoxDecoration(
                color: moreBackColor, borderRadius: BorderRadius.circular(50)),
            child: IconButton(
              onPressed: () {
                context.go('/more');
              },
              icon: Icon(
                Icons.settings,
                size: 30,
                color: moreIconColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

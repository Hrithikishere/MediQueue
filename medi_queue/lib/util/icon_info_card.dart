import 'package:flutter/material.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';

class IconInfoCard extends StatelessWidget {
  IconInfoCard(
      {required this.heading,
      required this.details,
      required this.iconData,
      super.key});
  String heading;
  String details;
  IconData iconData;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          //icon
          Container(
            padding: EdgeInsets.all(7),
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
                color: secondaryColor, borderRadius: BorderRadius.circular(5)),
            child: Icon(
              iconData,
              color: textLightColor,
            ),
          ),

          //rating value
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  heading,
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        fontSize: 10,
                        color: textDimColor,
                      ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  details,
                  softWrap: true,
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        fontSize: 15,
                      ),
                ),
                SizedBox(
                    // height: 10,
                    ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

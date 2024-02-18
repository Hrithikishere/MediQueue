import 'package:flutter/material.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';

class TextDescriptionCard extends StatelessWidget {
  TextDescriptionCard(
      {this.backgroundColor,
      required this.description,
      required this.containerHeight,
      super.key});

  Color? backgroundColor;
  String description;
  double containerHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: containerHeight,
      width: double.infinity,
      constraints: BoxConstraints(maxWidth: 450),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: backgroundColor ?? glassyColor,
          borderRadius: BorderRadius.circular(15)),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Text(
          description,
          softWrap: true,
          style: TextStyle(color: textLightColor),
        ),
      ),
    );
  }
}

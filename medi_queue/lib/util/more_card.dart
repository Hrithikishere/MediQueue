import 'package:flutter/material.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';

class MoreCard extends StatelessWidget {
  MoreCard({required this.onPressed, required this.buttonName, super.key});

  String buttonName;
  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: glassyColor),
      child: TextButton(
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(Size(double.infinity, 50)),
        ),
        child: Text(
          buttonName,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.displayLarge!.copyWith(
                fontSize: 15,
              ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}

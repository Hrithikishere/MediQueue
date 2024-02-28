import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';

class TopAppBar extends StatelessWidget {
  TopAppBar({required this.title, this.onPressed, super.key});
  String title;
  VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 15),
            decoration: BoxDecoration(
                color: glassyColor, borderRadius: BorderRadius.circular(50)),
            child: IconButton(
              onPressed: onPressed ??
                  () {
                    context.pop();
                  },
              icon: Icon(
                Icons.arrow_back,
                color: secondaryColor,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 15),
            child: Text(
              title,
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    fontSize: 18,
                  ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}

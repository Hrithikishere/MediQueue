import 'package:flutter/material.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';

class AppointmentCard extends StatelessWidget {
  AppointmentCard(
      {required this.doctorName,
      required this.doctorType,
      required this.time,
      required this.date,
      required this.buttonColor,
      required this.month,
      required this.buttonName,
      super.key});
  String doctorName;
  String doctorType;
  String time;
  String date;
  String month;
  String buttonName;
  Color buttonColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
          color: glassyColor, borderRadius: BorderRadius.circular(10)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 3,
            child: Row(
              children: [
                //date
                Container(
                  width: 80,
                  margin: const EdgeInsets.only(right: 10),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: secondaryColor, width: 1),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Text(
                          date,
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(
                                fontSize: 30,
                              ),
                        ),
                      ),
                      Text(
                        month,
                        style:
                            Theme.of(context).textTheme.displayLarge!.copyWith(
                                  fontSize: 15,
                                ),
                      ),
                    ],
                  ),
                ),
                //name & title
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(top: 2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 3),
                          child: Text(
                            doctorName,
                            maxLines: 3,
                            softWrap: true,
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          doctorType,
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(
                                fontSize: 11,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          //time and status
          Flexible(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.only(top: 2),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      time,
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                            fontSize: 12,
                          ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 5),
                      decoration: BoxDecoration(
                        color: buttonColor,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text(
                        buttonName,
                        style:
                            Theme.of(context).textTheme.displayLarge!.copyWith(
                                  fontSize: 12,
                                ),
                      ),
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}

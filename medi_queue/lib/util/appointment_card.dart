import 'package:flutter/material.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';

class AppointmentCard extends StatelessWidget {
  const AppointmentCard({super.key});

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
                  margin: EdgeInsets.only(right: 10),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: secondaryColor, width: 1),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 7),
                        child: Text(
                          "25",
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(
                                fontSize: 30,
                              ),
                        ),
                      ),
                      Text(
                        "Jan",
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
                            "Dr. Mohammad Ullah",
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
                          "Dentist",
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
                      "9.30 PM",
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                            fontSize: 12,
                          ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text(
                        "Pending",
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

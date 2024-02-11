import 'package:flutter/material.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';

class DoctorCard extends StatelessWidget {
  final String doctorImageAddress;
  final String doctorName;
  final String doctorRating;
  final String doctorType;

  const DoctorCard({
    required this.doctorImageAddress,
    required this.doctorName,
    required this.doctorRating,
    required this.doctorType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20),
          width: 200,
          decoration: BoxDecoration(
            color: glassyColor,
            borderRadius: BorderRadius.circular(7),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //image
              CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                  doctorImageAddress,
                ),
              ),
              SizedBox(height: 7),
              //starts
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: secondaryColor,
                    size: 18,
                  ),
                  Text(
                    " $doctorRating",
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                          fontSize: 14,
                        ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Text(
                doctorName,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      fontSize: 18,
                    ),
              ),
              SizedBox(height: 4),
              Text(
                doctorType,
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      fontSize: 12,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

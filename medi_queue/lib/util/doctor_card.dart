import 'package:flutter/material.dart';

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
      margin: EdgeInsets.only(right: 10),
      child: Center(
        child: Container(
          width: 160,
          decoration: BoxDecoration(
            color: Colors.deepPurple[100],
            borderRadius: BorderRadius.circular(7),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 35,
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
                    color: Colors.amber,
                    size: 15,
                  ),
                  Text(
                    " $doctorRating",
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
              SizedBox(height: 7),
              Text(
                doctorName,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                doctorType,
                style: TextStyle(
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

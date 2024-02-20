import 'package:cached_network_image/cached_network_image.dart';
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
      margin: EdgeInsets.only(right: 10),
      child: Center(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20),
          width: 180,
          // height: 350,
          decoration: BoxDecoration(
            color: glassyColor,
            borderRadius: BorderRadius.circular(7),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //image
              ClipOval(
                child: CachedNetworkImage(
                  imageUrl: doctorImageAddress,
                  placeholder: (context, url) => CircularProgressIndicator(),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                  maxHeightDiskCache:
                      150, // Set the maximum height for disk-cached images
                  height: 80,
                  width: 80,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 7),
              //starts
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: secondaryColor,
                    size: 18,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0),
                    child: Text(
                      " $doctorRating",
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                            fontSize: 14,
                          ),
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

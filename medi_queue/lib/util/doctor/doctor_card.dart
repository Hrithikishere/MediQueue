import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';
import 'package:medi_queue/framework/helpers/constants/data/doctors.dart';

class DoctorCard extends StatelessWidget {
  final int id;

  const DoctorCard({
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    Doctor doctor = doctorList.where((doctor) => doctor.id == id).first;
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
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
                imageUrl: doctor.imageAddress,
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
                    " ${doctor.rating}",
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                          fontSize: 13,
                        ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Text(
              doctor.name,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    fontSize: 16,
                  ),
            ),
            SizedBox(height: 4),
            Text(
              doctor.desg,
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    fontSize: 12,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

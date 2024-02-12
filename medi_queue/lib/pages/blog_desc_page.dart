import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';
import 'package:medi_queue/util/common/bottomAppBar.dart';
import 'package:medi_queue/util/common/topAppbar.dart';

class BlogDescriptionPage extends StatelessWidget {
  const BlogDescriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopAppBar(),
              //post title
              Text(
                "Why Men Should Stay on Top of Health Screenings",
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      fontSize: 18,
                    ),
              ),
              SizedBox(height: 2),
              //post time date
              Text(
                "24 Jan 2024, 9.30 PM",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      fontSize: 12,
                    ),
              ),
              SizedBox(height: 10),
              //doctor card
              Container(
                height: 100,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: glassyColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      flex: 2,
                      child: Container(
                        child: const CircleAvatar(
                          radius: 25,
                          backgroundImage: NetworkImage(
                            'https://static.vecteezy.com/system/resources/thumbnails/028/287/384/small/a-mature-indian-male-doctor-on-a-white-background-ai-generated-photo.jpg',
                          ),
                        ),
                      ),
                    ),
                    //doctor name category rating
                    Flexible(
                      flex: 8,
                      child: Container(
                        padding: EdgeInsets.only(left: 10, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dr. Md. Sayeedul Islam",
                              maxLines: 2,
                              overflow: TextOverflow
                                  .ellipsis, // Handle overflow gracefully
                              softWrap: true,
                              style: Theme.of(context)
                                  .textTheme
                                  .displayLarge!
                                  .copyWith(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Dentist",
                              style: Theme.of(context)
                                  .textTheme
                                  .displayLarge!
                                  .copyWith(
                                    fontSize: 13,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //bottom side
              SizedBox(
                height: 10,
              ),
              //description
              Container(
                height: 550,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: glassyColor,
                    borderRadius: BorderRadius.circular(15)),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Text(
                    "Historically, men have been hesitant to seek medical attention when something seems wrong with their health. Also, men aren't as likely as women to have preventive screenings and checkups with their health care team. This is a problem because early detection of a medical issue is the best way to improve effectiveness of condition treatment and management.Delaying or avoiding a checkup or screening could lead to a treatable situation turning deadly.While some screenings, such as HIV and hepatitis C, are recommended to have once, other screenings for certain cancers should be performed regularly.Vaccines are important to prevent infectious diseases. Vaccinations for men are administered at different intervals throughout adulthood.So, men, reconsider your reservations and talk to your health care team about potentially lifesaving screening.Men older than 50 should have a yearly physical exam, and men younger than 50 should have a physical exam every three to five years. Even if you're feeling healthy, a regular checkup with your health care team is a good way to validate your health or identify a problem in its early stages. health care team is a good way to validate your health or identify a problem in its early stages. health care team is a good way to validate your health or identify a problem in its early stages.",
                    softWrap: true,
                    style: TextStyle(color: textLightColor),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBars(),
    );
  }
}

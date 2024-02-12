import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';
import 'package:medi_queue/util/common/bottomAppBar.dart';
import 'package:medi_queue/util/common/text_description_card.dart';
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
              TopAppBar(title: "Blogs"),
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
              TextDescriptionCard(
                  containerHeight: 550,
                  description:
                      "The digestive system speaks a language I understand. After years of training (MBBS, FCPS, MD), I decipher its whispers to diagnose and treat liver, pancreatic, and other gut issues. At Enam Medical College & Hospital, I double down: guiding patients as a Professor and navigating their digestive journeys as a Gastroenterologist. Whether it's chronic pain, liver concerns, or gut health, every victory fuels my passion. Empowering individuals to reclaim their well-being is my mission.The digestive system speaks a language I understand. After years of training (MBBS, FCPS, MD), I decipher its whispers to diagnose and treat liver, pancreatic, and other gut issues. At Enam Medical College & Hospital, I double down: guiding patients as a Professor and navigating their digestive journeys as a Gastroenterologist. Whether it's chronic pain, liver concerns, or gut health, every victory fuels my passion. Empowering individuals to reclaim their well-being is my mission.The digestive system speaks a language I understand. After years of training (MBBS, FCPS, MD), I decipher its whispers to diagnose and treat liver, pancreatic, and other gut issues. At Enam Medical College & Hospital, I double down: guiding patients as a Professor and navigating their digestive journeys as a Gastroenterologist. Whether it's chronic pain, liver concerns, or gut health, every victory fuels my passion. Empowering individuals to reclaim their well-being is my mission."),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBars(),
    );
  }
}

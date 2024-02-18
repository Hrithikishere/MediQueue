import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';
import 'package:medi_queue/framework/helpers/constants/data/blogs.dart';
import 'package:medi_queue/util/common/bottomAppBar.dart';
import 'package:medi_queue/util/common/text_description_card.dart';
import 'package:medi_queue/util/common/topAppbar.dart';

class BlogDescriptionPage extends StatelessWidget {
  BlogDescriptionPage({super.key});
  // String id;
  @override
  Widget build(BuildContext context) {
    // Blogs blog = blogsList.firstWhere((blog) => blog.id == id);
    // print(blog.title);
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            margin: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TopAppBar(
                  title: "Blogs",
                  onPressed: () {
                    context.go('/blogs');
                  },
                ),

                //post title
                Text(
                  "Why Men Should Stay on Top of Health Screenings",
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        fontSize: 18,
                      ),
                ),
                SizedBox(height: 5),
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
                          child: ClipOval(
                            child: CachedNetworkImage(
                              imageUrl:
                                  'https://images.squarespace-cdn.com/content/v1/631ba8eed2196a6795698665/e35c4b20-b80a-412f-8048-8ad57c07bd79/2022-02-10-Trinet-Kinh-5690-OneDrive+-+Social+Media.jpg',
                              placeholder: (context, url) =>
                                  const CircularProgressIndicator(),
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.error),
                              maxHeightDiskCache:
                                  100, // Set the maximum height for disk-cached images
                              height: 65,
                              width: 70,
                              fit: BoxFit.cover,
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
                              SizedBox(
                                height: 3,
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
                    containerHeight: 450,
                    description:
                        "The digestive system speaks a language I understand. After years of training (MBBS, FCPS, MD), I decipher its whispers to diagnose and treat liver, pancreatic, and other gut issues. At Enam Medical College & Hospital, I double down: guiding patients as a Professor and navigating their digestive journeys as a Gastroenterologist. Whether it's chronic pain, liver concerns, or gut health, every victory fuels my passion. Empowering individuals to reclaim their well-being is my mission.The digestive system speaks a language I understand. After years of training (MBBS, FCPS, MD), I decipher its whispers to diagnose and treat liver, pancreatic, and other gut issues. At Enam Medical College & Hospital, I double down: guiding patients as a Professor and navigating their digestive journeys as a Gastroenterologist. Whether it's chronic pain, liver concerns, or gut health, every victory fuels my passion. Empowering individuals to reclaim their well-being is my mission.The digestive system speaks a language I understand. After years of training (MBBS, FCPS, MD), I decipher its whispers to diagnose and treat liver, pancreatic, and other gut issues. At Enam Medical College & Hospital, I double down: guiding patients as a Professor and navigating their digestive journeys as a Gastroenterologist. Whether it's chronic pain, liver concerns, or gut health, every victory fuels my passion. Empowering individuals to reclaim their well-being is my mission."),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBars(
        value: 0,
      ),
    );
  }
}
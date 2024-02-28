import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';
import 'package:medi_queue/framework/helpers/constants/data/blogs.dart';
import 'package:medi_queue/framework/helpers/constants/data/doctors.dart';
import 'package:medi_queue/util/common/bottomAppBar.dart';
import 'package:medi_queue/util/common/text_description_card.dart';
import 'package:medi_queue/util/common/topAppbar.dart';

class BlogDescriptionPage extends StatelessWidget {
  BlogDescriptionPage({required this.id, super.key});

  int id;

  @override
  Widget build(BuildContext context) {
    // int id = 1002;
    Blogs blog = blogsList.where((blog) => blog.id == id).first;
    Doctor doctor =
        doctorList.where((doctor) => doctor.id == blog.postedBy).first;
    // print("------------------------${blog.title}");
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
                    context.pop();
                  },
                ),

                //post title
                Text(
                  blog.title,
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        fontSize: 18,
                      ),
                ),
                const SizedBox(height: 5),
                //post time date
                Text(
                  blog.postedTime,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        fontSize: 12,
                      ),
                ),
                const SizedBox(height: 10),
                //doctor card
                Container(
                  height: 100,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: glassyColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipOval(
                        child: CachedNetworkImage(
                          imageUrl: doctor.imageAddress,
                          placeholder: (context, url) =>
                              const CircularProgressIndicator(),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                          maxHeightDiskCache:
                              100, // Set the maximum height for disk-cached images
                          height: 65,
                          width: 65,
                          fit: BoxFit.cover,
                        ),
                      ),
                      //doctor name category
                      InkWell(
                        onTap: () {
                          context.push('/doctor_profile/${blog.postedBy}');
                        },
                        child: Container(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                doctor.name,
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
                              const SizedBox(height: 3),
                              Text(
                                doctor.desg,
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
                SizedBox(height: 10),
                //description
                TextDescriptionCard(
                    containerHeight: MediaQuery.of(context).size.height * 0.57,
                    description: blog.description),
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

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';
import 'package:medi_queue/framework/helpers/constants/data/blogs.dart';
import 'package:medi_queue/util/blogs_card.dart';
import 'package:medi_queue/util/common/bottomAppBar.dart';
import 'package:medi_queue/util/common/topAppbar.dart';
import 'package:medi_queue/util/doctor/doctor_card.dart';
import 'package:medi_queue/util/doctor/doctor_profile_card.dart';

class BlogsPage extends StatelessWidget {
  const BlogsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            margin: EdgeInsets.all(15),
            child: Column(
              children: [
                TopAppBar(
                  title: "Blogs",
                  onPressed: () {
                    context.go('/home');
                  },
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.9,
                  child: ListView.builder(
                    itemCount: blogsList.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          context.go('/blog_desc');
                        },
                        child: BlogsCard(
                          title: blogsList[index].title,
                          doctorName: blogsList[index].postedBy,
                          doctorCategory: blogsList[index].postedByDesg,
                          postedTime: blogsList[index].postedTime,
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBars(
        value: 3,
      ),
    );
  }
}
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
        child: Container(
          margin: const EdgeInsets.all(15),
          child: Column(
            children: [
              TopAppBar(
                title: "Blogs",
                onPressed: () {
                  context.pop();
                },
              ),
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.9,
                  child: ListView.builder(
                    itemCount: blogsList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        child: InkWell(
                          onTap: () {
                            // print("print before sending ${blogsList[index].id}");
                            context.push('/blog_desc/${blogsList[index].id}');
                          },
                          child: BlogsCard(
                            id: blogsList[index].id,
                            title: blogsList[index].title,
                            doctorId: blogsList[index].postedBy,
                            postedTime: blogsList[index].postedTime,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBars(
        value: 3,
      ),
    );
  }
}

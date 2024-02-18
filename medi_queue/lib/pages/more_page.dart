import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';
import 'package:medi_queue/util/common/bottomAppBar.dart';
import 'package:medi_queue/util/common/topAppbar.dart';
import 'package:medi_queue/util/more_card.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(15),
            child: Column(
              children: [
                TopAppBar(
                  title: "More",
                  onPressed: () {
                    context.go('/home');
                  },
                ),
                MoreCard(
                  buttonName: "Profile",
                  onPressed: () => context.go('/my_profile'),
                ),
                MoreCard(
                  buttonName: "Appointments",
                  onPressed: () => context.go('/appointments'),
                ),
                MoreCard(
                  buttonName: "All Doctors",
                  onPressed: () => context.go('/doctor_all'),
                ),
                MoreCard(
                  buttonName: "Blogs",
                  onPressed: () => context.go('/blogs'),
                ),
                MoreCard(
                  buttonName: "About Us",
                  onPressed: () => context.go('/about'),
                ),
                MoreCard(
                  buttonName: "Logout",
                  onPressed: () => context.go('/login_page'),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBars(value: 4),
    );
  }
}

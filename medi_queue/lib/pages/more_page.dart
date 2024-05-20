import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';
import 'package:medi_queue/providers/login_register/loginProvider.dart';
import 'package:medi_queue/util/common/bottomAppBar.dart';
import 'package:medi_queue/util/common/topAppbar.dart';
import 'package:medi_queue/util/more_card.dart';

class MorePage extends ConsumerWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                    context.pop();
                  },
                ),
                MoreCard(
                  buttonName: "Profile",
                  onPressed: () => context.push('/my_profile'),
                ),
                MoreCard(
                  buttonName: "Appointments",
                  onPressed: () => context.push('/appointments'),
                ),
                MoreCard(
                  buttonName: "All Doctors",
                  onPressed: () => context.push('/doctor_all'),
                ),
                MoreCard(
                  buttonName: "Blogs",
                  onPressed: () => context.push('/blogs'),
                ),
                MoreCard(
                  buttonName: "About Us",
                  onPressed: () => context.push('/about'),
                ),
                Consumer(
                  builder: (context, ref, child) {
                    return MoreCard(
                        buttonName: "Logout",
                        onPressed: () {
                          ref.read(authProvider.notifier).logout();
                          context.go('/login_page');
                        });
                  },
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

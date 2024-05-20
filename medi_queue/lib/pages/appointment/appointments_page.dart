import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';
import 'package:medi_queue/providers/login_register/loginProvider.dart';
import 'package:medi_queue/util/appointment/appointment_card.dart';
import 'package:medi_queue/util/common/bottomAppBar.dart';
import 'package:medi_queue/util/common/topAppbar.dart';
import 'package:medi_queue/util/appointment/next_appointment_card.dart';

import '../../framework/helpers/constants/data/user_profile.dart';

class AppointmentsPage extends ConsumerWidget {
  const AppointmentsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopAppBar(
                title: "Appointments",
                onPressed: () {
                  context.pop();
                },
              ),
              Consumer(builder: (context, ref, child) {
                ref.watch(authProvider.notifier).username();
                return NextAppointmentCard();
              }),
              // const SizedBox(height: 10),
              Text(
                "Appointments",
                textAlign: TextAlign.left,
                style: Theme.of(context)
                    .textTheme
                    .displayLarge!
                    .copyWith(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Flexible(
                child: Consumer(builder: (context, ref, child) {
                  final usersId = ref.watch(authProvider.notifier).username();
                  try {
                    final user = usersList
                        .singleWhere((element) => element.id == usersId);
                    user.appointmentList.sort((a, b) => b.compareTo(a));
                    // user.appointmentList.removeAt(0);
                    if (user.appointmentList.isNotEmpty) {
                      return ListView.builder(
                        shrinkWrap: true,
                        itemCount: user.appointmentList.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              context.push(
                                  '/appointment_details/${user.appointmentList[index]}');
                            },
                            child: AppointmentCard(
                              appointmentId: user.appointmentList[index],
                            ),
                          );
                        },
                      );
                    } else {
                      return Center(
                        child: Container(
                          margin: EdgeInsets.only(top: 50),
                          child: Text(
                            "No Appointments Found",
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(
                                  fontSize: 15,
                                ),
                          ),
                        ),
                      );
                    }
                  } catch (e) {
                    return Center(
                      child: Container(
                        margin: EdgeInsets.only(top: 50),
                        child: Text(
                          "No Appointments Found",
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(
                                fontSize: 15,
                              ),
                        ),
                      ),
                    );
                  }
                }),
              ),
              // const SizedBox(height: 10),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBars(
        value: 2,
      ),
    );
  }
}

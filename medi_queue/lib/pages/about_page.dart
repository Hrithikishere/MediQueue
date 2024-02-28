import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';
import 'package:medi_queue/util/common/text_description_card.dart';
import 'package:medi_queue/util/common/topAppbar.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      //resizeToAvoidBottomInset: false,
      //singleCHILDSCROLL
      // backgroundColor: Color(0xffF2F3FF),
      body: SafeArea(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TopAppBar(
                    title: "About Us",
                    onPressed: () {
                      context.pop();
                    },
                  ),
                  //about mediqueue
                  RichText(
                    text: TextSpan(
                      text: "",
                      children: [
                        TextSpan(
                          text: "About",
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(
                                  fontSize: 34,
                                  height: 1.2,
                                  fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: "\nMediqueue ",
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(
                                  fontSize: 34,
                                  color: secondaryColor,
                                  height: 1.2,
                                  fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  //details
                  TextDescriptionCard(
                      description:
                          "Forget juggling phone calls and endless hold times! Say goodbye to crowded waiting rooms and missed appointments. With [Your App Name], booking doctor appointments becomes a breeze. Find the perfect specialist – whether it's a nearby general practitioner or a renowned cardiologist across town – with our intuitive search tool. Filter by specialty, location, or even patient reviews to ensure you get the care you deserve. Book appointments instantly, 24/7, from the comfort of your couch. Need to reschedule or cancel? No problem, it's just a tap away. Manage your appointments easily, access past records, and receive helpful reminders. Take control of your health with Mediqueue. experience the future of healthcare – streamlined, convenient, and stress-free.",
                      containerHeight: 380),
                  SizedBox(height: 15),
                  //contact us
                  TextDescriptionCard(
                      description:
                          "Contact Us\n\nWebsite: www.mediqueue.com\nEmail: info@mediqueue.com\nCall: 094616513153\nFacebook: www.facebook.com/mediqueue \nInstagram: www.instagram.com/mediqueue\nThread: www.thread.com/mediqueue\n\nDeveloped by: \nThe Anonymous Team",
                      containerHeight: 270),
                  SizedBox(height: 15),
                  //mediqueue
                  Center(
                    child: Container(
                      child: Column(
                        children: [
                          Text(
                            "Mediqueue",
                            textAlign: TextAlign.left,
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(fontSize: 34),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Version 1.0.0.0",
                            textAlign: TextAlign.left,
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

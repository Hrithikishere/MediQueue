import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';

class IntroThreePage extends StatelessWidget {
  const IntroThreePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 35, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //text
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mediqueue",
                      textAlign: TextAlign.left,
                      style: Theme.of(context)
                          .textTheme
                          .displayLarge!
                          .copyWith(fontSize: 14),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Find a Doctor",
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(
                                  fontSize: 48,
                                ),
                          ),
                          TextSpan(
                            text: "\nSet an Appointment!",
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(fontSize: 48, color: secondaryColor),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //image
              Center(child: Image.asset("assets/icons/intro-three-logo.png")),
              //next button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 70,
                    width: 100,
                    decoration: BoxDecoration(
                        color: secondaryColor,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(35)),
                    child: IconButton(
                      onPressed: () {
                        context.go('/intro_four');
                      },
                      icon: Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: primaryColor,
                        size: 25,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

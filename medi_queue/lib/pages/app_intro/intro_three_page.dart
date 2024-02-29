import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_queue/framework/helpers/constants/colors.dart';

class IntroThreePage extends StatelessWidget {
  const IntroThreePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double baseFontSize = 48.0;
    double scaledFontSize = screenWidth / 375 * baseFontSize;
    if (scaledFontSize > 48) {
      scaledFontSize = 48;
    }
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
                                    fontSize: scaledFontSize,
                                    height: 1.2,
                                    fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: "\nSet an Appointment!",
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(
                                    fontSize: scaledFontSize,
                                    color: secondaryColor,
                                    height: 1.2,
                                    fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //image
              Center(
                  child: Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      width: MediaQuery.of(context).size.height - 240,
                      child: Image.asset("assets/icons/intro-three-logo.png"))),
              //next button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      context.pop();
                    },
                    child: Text(
                      "Skip",
                      selectionColor: secondaryColor,
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        color: secondaryColor,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(35)),
                    child: IconButton(
                      onPressed: () {
                        context.push('/intro_four');
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

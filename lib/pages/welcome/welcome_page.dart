import 'package:app_social/pages/welcome/widget/welcome_body.dart';
import 'package:app_social/pages/welcome/widget/welcome_heading.dart';
import 'package:app_social/pages/welcome/widget/welcome_slide.dart';
import 'package:flutter/material.dart';


class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              WelcomeHeading(),
              WelcomeBody(),
              WelcomeSlide()
            ],
          ),
        ),
      ),
    );
  }
}
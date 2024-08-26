import 'package:app_social/config/images.dart';
import 'package:app_social/config/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:get/get.dart';

class WelcomeSlide extends StatelessWidget {
  const WelcomeSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return SlideAction(
                onSubmit: () { 
                  Get.offAllNamed("/auth");
                },
                sliderButtonIcon: SvgPicture.asset(AssetsImages.plugSVG, width: 20,),
                submittedIcon: Container(
                  width: 25,
                  height:25,
                  child: SvgPicture.asset(
                    AssetsImages.connectSVG, 
                    width: 25,
                    )
                    ),
                text: WelcomePageString.slideToStart,
                textStyle: Theme.of(context).textTheme.labelLarge,
                innerColor: Theme.of(context).colorScheme.secondary,
                outerColor: Theme.of(context).colorScheme.primaryContainer,
              );
  }
}
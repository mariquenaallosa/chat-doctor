import 'package:flutter/material.dart';
import 'package:app_social/config/images.dart';
import 'package:app_social/config/strings.dart';
import 'package:flutter_svg/flutter_svg.dart';
class WelcomeBody extends StatelessWidget {
  const WelcomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AssetsImages.boyPic),
            SvgPicture.asset(AssetsImages.connectSVG),
            Image.asset(AssetsImages.girlPic),
          ],
        ),
      const SizedBox(height: 40,),
      Text(
          WelcomePageString.youAre,
          style: Theme.of(context).textTheme.headlineMedium,
          ),
      Text(
          WelcomePageString.conected,
          style: Theme.of(context).textTheme.headlineLarge?.copyWith(color: Theme.of(context).colorScheme.secondary),
          ),
      const SizedBox(height: 40,),
      Text(
        WelcomePageString.description,
        style: Theme.of(context).textTheme.labelMedium,
        textAlign: TextAlign.center,
        textWidthBasis: TextWidthBasis.parent,
          ),
    
      ],   
      );
  }
}
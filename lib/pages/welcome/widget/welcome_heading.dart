import 'package:app_social/config/strings.dart';
import 'package:flutter/material.dart';
import 'package:app_social/config/images.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeHeading extends StatelessWidget {
  const WelcomeHeading({super.key});

 @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AssetsImages.appIconSVG,
              colorFilter: const ColorFilter.mode( Color.fromARGB(255, 226, 227, 228), BlendMode.srcIn),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Text(
          AppString.appName,
          style: Theme.of(context).textTheme.headlineLarge?.copyWith(color: Theme.of(context).colorScheme.secondary),
        ),
      ],
    );
  }
  }
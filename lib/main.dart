import 'package:app_social/config/page_path.dart';
import 'package:app_social/config/themes.dart';
import 'package:app_social/pages/homePage/home_page.dart';
import 'package:app_social/pages/welcome/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Social App',
      home: const WelcomePage(),
      debugShowCheckedModeBanner: false,
      theme: ligthTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.dark,
      getPages: pagePath,
    );
  }
}

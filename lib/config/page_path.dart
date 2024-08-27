import 'package:app_social/pages/auth/auth_page.dart';
import 'package:app_social/pages/homePage/home_page.dart';
import 'package:get/get.dart';


var pagePath = [
GetPage(
  name: "/auth", page: ()=> const AuthPage(), transition: Transition.rightToLeft
  ),
  GetPage(
  name: "/home", page: ()=> const HomePage(), transition: Transition.circularReveal
  ),
];
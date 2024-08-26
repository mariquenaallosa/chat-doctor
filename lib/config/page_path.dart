import 'package:app_social/pages/auth/auth_page.dart';
import 'package:get/get.dart';


var pagePath = [
GetPage(
  name: "/auth", page: ()=> const AuthPage(), transition: Transition.rightToLeft
  )
];
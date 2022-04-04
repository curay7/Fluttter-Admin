import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:web_flutter/helper/widgets/LargeScreen.dart';
import 'package:web_flutter/routes/middleware.dart';

import '../../view/auth/Login.dart';
import '../../view/auth/Register.dart';
import '../../view/home/DashboardHome.dart';

// ignore: todo
// TODO: Fix Route for Auth
customAppRouter() {
  // SharedPreferences prefs = await SharedPreferences.getInstance();
  // var user = prefs.getString('username');

  return [
    GetPage(
        name: "/login",
        page: () => AuthLogin(),
        middlewares: [secondMiddleware()]),
    GetPage(
        name: "/register",
        page: () => AuthRegister(),
        middlewares: [secondMiddleware()]),
    GetPage(
        name: "/home",
        page: () => DashboardHome(),
        middlewares: [FirstMiddleware()]),
    GetPage(name: '/side', page: () => LargeScreen())
  ];
  // if (user == 'sampleValue') {
  //   return [
  //     GetPage(name: "/login", page: () => AuthLogin()),
  //   ];
  // } else {
  //   return [
  //     // GetPage(name: "/register", page: () => AuthRegister()),
  //     GetPage(name: "/home", page: () => DashboardHome()),
  //     // GetPage(name: '/side', page: () => LargeScreen())
  //   ];
  // }

  // if (user) {
  //   return [
  //     // GetPage(name: "/register", page: () => AuthRegister()),
  //     // GetPage(name: "/home", page: () => DashboardHome()),
  //     // GetPage(name: '/side', page: () => LargeScreen())
  //   ];
  // } else {
  //   return [
  //     GetPage(name: "/login",user, page: () => AuthLogin()),
  //   ];
  // }
}

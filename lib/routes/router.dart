import 'package:get/get.dart';
import 'package:web_flutter/helper/widgets/LargeScreen.dart';
import 'package:web_flutter/routes/middleware.dart';

import '../../view/auth/Login.dart';
import '../../view/auth/Register.dart';
import '../../view/home/DashboardHome.dart';

customAppRouter() {
  return [
    GetPage(
        name: "/login",
        page: () => AuthLogin(),
        middlewares: [SecondMiddleware()]),
    GetPage(
        name: "/register",
        page: () => AuthRegister(),
        middlewares: [SecondMiddleware()]),
    GetPage(
      name: "/home",
      page: () => DashboardHome(),
      //middlewares: [FirstMiddleware()],
    ),
    GetPage(name: '/side', page: () => LargeScreen())
  ];
}

import 'package:get/get.dart';
import 'package:web_flutter/helper/widgets/LargeScreen.dart';

import 'view/auth/Login.dart';
import 'view/auth/Register.dart';
import 'view/home/DashboardHome.dart';

customAppRouter() {
  return [
    GetPage(name: '/side', page: () => LargeScreen()),
    GetPage(name: "/login", page: () => AuthLogin()),
    GetPage(name: "/register", page: () => AuthRegister()),
    GetPage(name: "/home", page: () => DashboardHome())
  ];
}

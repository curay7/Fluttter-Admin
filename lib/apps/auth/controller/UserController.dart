import 'package:get/get.dart';
import 'package:web_flutter/apps/auth/service/UserControllerUtil.dart';

var userUtil = UserControllerUtil();

class UserController extends GetxController {
  var user = [].obs;

  login(String email, String password) async {
    bool isLogin = await userUtil.login(email, password);
    if (isLogin) {
      Get.toNamed('/home');
    }
  }

  changeStatus() {
    print("checkStatus");
  }
}

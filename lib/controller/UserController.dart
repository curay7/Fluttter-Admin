import 'package:get/get.dart';
import 'package:web_flutter/controller/UserControllerUtil.dart';

var userUtil = UserControllerUtil();

class UserController extends GetxController {
  var user = [].obs;
  // ignore: must_call_super

  login(String email, String password) async {
    bool isLogin = await userUtil.login(email, password);
    if (isLogin) {
      Get.toNamed('/home');
      // print(isLogin);
      // print("True Login");
    } else {
      // print(isLogin);
      // print("false Login");
    }
  }

  changeStatus() {
    print("checkStatus");
  }
}

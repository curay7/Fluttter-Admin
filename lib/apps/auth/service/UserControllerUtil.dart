import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:web_flutter/apps/auth/controller/UserController.dart';

final UserController controllerUser = Get.put(UserController());

class UserControllerUtil extends ChangeNotifier {
  bool _isAuthenticated = false;

  bool get isAuthenticated => _isAuthenticated;

  Future<bool> login(String email, String password) async {
    final response =
        await http.post(Uri.parse('http://127.0.0.1:8000/api/login'), body: {
      'email': email,
      'password': password,
    }, headers: {
      'Accept': 'application/json',
    });

    if (response.statusCode == 201) {
      controllerUser.user.add(response.body);
      notifyListeners();
      return true;
    }

    if (response.statusCode == 401) {
      return false;
    }

    //

    return false;
  }
}

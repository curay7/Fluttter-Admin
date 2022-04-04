import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:web_flutter/controller/UserController.dart';

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
      String token = response.body;
      //await saveToken(token);
      // _isAuthenticated = true;
      print("Util");
      print("Util");
      controllerUser.user.add(response.body);
      print(controllerUser.user.value);
      // print("Util");

      notifyListeners();
      return true;
    }

    if (response.statusCode == 401) {
      return false;
    }

    //

    return false;
  }

  // saveToken(String token) async {
  //   final prefs = await SharedPreferences.getInstance();
  //   await prefs.setString('token', token);
  // }

  // Future<String?> getToken() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   return prefs.getString('token');
  // }

  // logout() async {
  //   _isAuthenticated = false;
  //   notifyListeners();

  //   final prefs = await SharedPreferences.getInstance();
  //   await prefs.clear();
  // }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_flutter/apps/auth/controller/UserController.dart';

final UserController controllerUser = Get.put(UserController());

class FirstMiddleware extends GetMiddleware {
  @override
  int? get priority => 2;

  var isAuthenticated = false;
  //     (controllerUser.user.value.length == 1) ? true : false;

  @override
  redirect(String? route) {
    // ignore: invalid_use_of_protected_member
    bool isLogin = controllerUser.user.value.isEmpty;
    if (isLogin) {
      return RouteSettings(name: '/login');
    }
    return null;
  }

  //This function will be called  before anything created we can use it to
  // change something about the page or give it new page
  @override
  GetPage? onPageCalled(GetPage? page) {
    return super.onPageCalled(page);
  }

  //This function will be called right before the Bindings are initialized.
  // Here we can change Bindings for this page.
  @override
  List<Bindings>? onBindingsStart(List<Bindings>? bindings) {
    return super.onBindingsStart(bindings);
  }

  //This function will be called right after the Bindings are initialized.
  // Here we can do something after  bindings created and before creating the page widget.
  @override
  GetPageBuilder? onPageBuildStart(GetPageBuilder? page) {
    return super.onPageBuildStart(page);
  }

  // Page build and widgets of page will be shown
  @override
  Widget onPageBuilt(Widget page) {
    return super.onPageBuilt(page);
  }
}

class SecondMiddleware extends GetMiddleware {
  @override
  int? get priority => 2;

  var isAuthenticated = false;
  //     (controllerUser.user.value.length == 1) ? true : false;

  @override
  redirect(String? route) {
    // ignore: invalid_use_of_protected_member
    bool isLogin = controllerUser.user.value.isNotEmpty;
    if (isLogin) {
      return RouteSettings(name: '/home');
    }
    return null;
  }

  //This function will be called  before anything created we can use it to
  // change something about the page or give it new page
  @override
  GetPage? onPageCalled(GetPage? page) {
    return super.onPageCalled(page);
  }

  //This function will be called right before the Bindings are initialized.
  // Here we can change Bindings for this page.
  @override
  List<Bindings>? onBindingsStart(List<Bindings>? bindings) {
    return super.onBindingsStart(bindings);
  }

  //This function will be called right after the Bindings are initialized.
  // Here we can do something after  bindings created and before creating the page widget.
  @override
  GetPageBuilder? onPageBuildStart(GetPageBuilder? page) {
    return super.onPageBuildStart(page);
  }

  // Page build and widgets of page will be shown
  @override
  Widget onPageBuilt(Widget page) {
    return super.onPageBuilt(page);
  }
}

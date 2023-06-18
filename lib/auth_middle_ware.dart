import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes/app_pages.dart';

class AuthMiddleWare extends GetMiddleware{
  final isLoggedIn = true;

  @override
  RouteSettings? redirect(String? route) {
    return isLoggedIn
        ? const RouteSettings(name: Routes.HOME)
        : const RouteSettings(name: Routes.LOGIN);
  }
}
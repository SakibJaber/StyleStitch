import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:style_stitch/features/landing_page/landing_page.dart';
import 'package:style_stitch/features/login/model/login_model.dart';
import 'package:style_stitch/features/register/register_page.dart';
import 'package:style_stitch/service/network/network_handler.dart';
import 'package:style_stitch/theme/colors.dart';

class LoginController extends GetxController {
  TextEditingController loginEditController = TextEditingController();

  void login() async {
    LoginModel loginModel = LoginModel(phone: loginEditController.text);
    var response = await NetworkHandler.post(
        loginModelToJson(loginModel), 'auth/loginOrRegister');
    var data = json.decode(response);

    if (data['token'] == null) {
      Get.snackbar(
        'User Registration',
        'Registration Successful',
        colorText: Colors.white,
        backgroundColor: AppColor.buttonColor,
        duration: const Duration(seconds: 3),
        icon: const Icon(Icons.add_alert),
      );
    } else {
      await NetworkHandler.storeToken(data['token']);
    }

    if (data['message'] == "User Login Successfully") {
      if (data['user']['email'] == null) {
        Get.to(() => RegisterPage());
      } else {
        Get.to(() =>  LandingPage());
      }
    }
  }
}

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:style_stitch/features/landing_page/landing_page.dart';
import 'package:style_stitch/features/login/model/login_model.dart';
import 'package:style_stitch/features/register/register_page.dart';
import 'package:style_stitch/service/network/network_handler.dart';
import 'package:style_stitch/theme/colors.dart';

class LoginController extends GetxController {
  TextEditingController loginEditController = TextEditingController();

  late SharedPreferences prefs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  void initSharedPref() async {
    prefs = await SharedPreferences.getInstance();
  }

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

    if (data['message'] == "User Logged in Successfully") {
      // var myToken = data['token'];
      // prefs.setString('token', myToken);
      if (data['user'] == null) {
        Get.to(() => RegisterPage());
      } else {
        // ignore: prefer_const_constructors
        await NetworkHandler.storeToken(data['token']);
        Get.to(() => const LandingPage());
      }
    }
  }
}

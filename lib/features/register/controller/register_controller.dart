import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:style_stitch/features/landing_page/landing_page.dart';
import 'package:style_stitch/features/login/controller/login_controller.dart';
import 'package:style_stitch/features/register/model/register_model.dart';
import 'package:style_stitch/service/network/network_handler.dart';

var loginController = Get.put(LoginController());

class RegisterController extends GetxController {
  TextEditingController passwordTextController = TextEditingController();
  TextEditingController nameTextController = TextEditingController();
  TextEditingController emailTextController = TextEditingController();
  TextEditingController alternativeNumberTextController =
      TextEditingController();
  TextEditingController hintNameTextController = TextEditingController();
  RxString selectedGender = ''.obs;

  void register() async {
    print('object1');
    RegisterModel registerModel = RegisterModel(
      phone: loginController.loginEditController.text,
      name: nameTextController.text,
      password: passwordTextController.text,
      email: emailTextController.text,
      alterNumber: alternativeNumberTextController.text,
      hint: hintNameTextController.text,
      gender: selectedGender.value,
    );

    var response = await NetworkHandler.post(
        registerModelToJson(registerModel), 'user/updateByPhone');

    print(response);
    var data = json.decode(response);
    print(data);

    if (data['message'] == "User Register Successfully") {
      Get.to(() => const LandingPage());
      // Get.offAll(const LandingPage());
    }
  }
}

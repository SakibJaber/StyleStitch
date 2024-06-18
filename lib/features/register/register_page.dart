import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:style_stitch/components/sex_button.dart';
import 'package:style_stitch/components/solid_button.dart';
import 'package:style_stitch/components/text_from_field.dart';
import 'package:style_stitch/features/login/controller/login_controller.dart';
import 'package:style_stitch/features/register/controller/register_controller.dart';
import 'package:style_stitch/theme/colors.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  final formKey = GlobalKey<FormState>();
  var loginController = Get.put(LoginController());
  var registerController = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: AppColor.scaffoldBgColor,
        appBar: AppBar(
          title: const Text(
            'Complete your sign up',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 16.0),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Text(
                              'Mobile Number',
                              style: TextStyle(
                                  fontSize: 12.0, color: AppColor.captionColor),
                            ),
                          ),
                          Text(
                            loginController.loginEditController.text,
                            style: TextStyle(
                                fontSize: 15.0, color: AppColor.headingColor6),
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.check_circle,
                        color: Colors.teal,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  TextFromField(
                    textEditingController:
                        registerController.passwordTextController,
                    keyboardType: TextInputType.visiblePassword,
                    labelText: ' Create Password*',
                    // validator: (value) {
                    //   if (value!.isEmpty) {
                    //     return "Password can't be empty";
                    //   }
                    //   print(value);
                    //   return (value);
                    // },
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  TextFromField(
                    textEditingController:
                        registerController.nameTextController,
                    labelText: ' Full Name (Optional)',
                    keyboardType: TextInputType.name,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  TextFromField(
                    textEditingController:
                        registerController.emailTextController,
                    keyboardType: TextInputType.emailAddress,
                    labelText: ' Email (Optional)',
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Obx(
                    () => SexButton(
                      onGenderTap: onGenderTap,
                      genderValue: registerController.selectedGender.value,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  TextFromField(
                    textEditingController:
                        registerController.alternativeNumberTextController,
                    keyboardType: TextInputType.number,
                    labelText: ' Alternet Mobile Number',
                    prefixIcon: Padding(
                      padding:
                          const EdgeInsets.only(left: 10, top: 13.5, right: 7),
                      child: Text(
                        '+880',
                        style: TextStyle(
                            color: AppColor.captionColor, fontSize: 15),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  TextFromField(
                    textEditingController:
                        registerController.hintNameTextController,
                    keyboardType: TextInputType.name,
                    labelText: ' Hint Name',
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  SolidButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        registerController.register();
                      }
                    },
                    btnText: 'CREATE  ACCOUNT',
                    width: 0.8,
                  )
                ],
              ),
            ),
          ),
        ));
  }

  void onGenderTap(String gender) {
    registerController.selectedGender.value = gender;
    print(registerController.selectedGender.value);
  }
}

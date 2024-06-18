import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:style_stitch/components/solid_button.dart';
import 'package:style_stitch/features/login/controller/login_controller.dart';
import 'package:style_stitch/theme/colors.dart';

class LoginBottomsheet extends StatelessWidget {
  LoginBottomsheet({super.key});

  LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      color: Colors.white,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/logo-big.png',
                    width: 45.0,
                    height: 45.0,
                  ),
                  IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(
                        CupertinoIcons.clear,
                        size: 30,
                      )),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'LOGIN ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600),
                    ),
                    TextSpan(
                      text: ' or ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12.0,
                      ),
                    ),
                    TextSpan(
                      text: ' SIGNUP',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              SizedBox(
                height: 45,
                child: TextField(
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    color: AppColor.captionColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  controller: controller.loginEditController, //? controller
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(top: 20),
                    labelText: '  Mobile Number*',
                    labelStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 10, top: 12, right: 7),
                      child: Text(
                        '+880',
                        style:
                            TextStyle(color: AppColor.captionColor, fontSize: 15),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: AppColor.captionColor,
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'By continuing, I agree to the ',
                      style: TextStyle(
                          color: AppColor.captionColor,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600),
                    ),
                    TextSpan(
                      text: ' Terms of Use',
                      style: TextStyle(
                          color: AppColor.buttonColor,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600),
                    ),
                    TextSpan(
                      text: ' & ',
                      style: TextStyle(
                          color: AppColor.captionColor,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600),
                    ),
                    TextSpan(
                      text: 'Privacy Policy',
                      style: TextStyle(
                          color: AppColor.buttonColor,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              SolidButton(
                onPressed: controller.login,
                btnText: 'CONTINUE',
                width: 0.80,
              ),
              const SizedBox(
                height: 50.0,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Having trouble logging in? ',
                      style: TextStyle(
                          color: AppColor.captionColor,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600),
                    ),
                    TextSpan(
                      text: ' Get help',
                      style: TextStyle(
                          color: AppColor.buttonColor,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

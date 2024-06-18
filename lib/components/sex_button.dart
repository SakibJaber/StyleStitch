import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:style_stitch/features/register/controller/register_controller.dart';

import 'package:style_stitch/theme/colors.dart';

class SexButton extends StatelessWidget {
   SexButton(
      {super.key, required this.onGenderTap, required this.genderValue});

  final Function(String value) onGenderTap;
  final String genderValue;

  var registerController = Get.put(RegisterController());

  //  String genderValue = '';

  // void onGenderTap(String gender) {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: AppColor.captionColor),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: InkWell(
              onTap: () {
                onGenderTap('Male');
              },
              child: Container(
                color: genderValue == 'Male'
                    ? AppColor.buttonColor
                    : Colors.transparent,
                child: Center(
                  child: Text('Male',
                      style: TextStyle(
                          color: genderValue == 'Male'
                              ? Colors.white
                              : Colors.black)),
                ),
              ),
            ),
          ),
          const VerticalDivider(
            color: Colors.grey,
            width: 3,
            thickness: 1,
          ),
          Flexible(
            flex: 1,
            child: InkWell(
              onTap: () {
                onGenderTap('Female');
              },
              child: Container(
                color: genderValue == 'Female'
                    ? AppColor.buttonColor
                    : Colors.transparent,
                child: Center(
                  child: Text(
                    'Female',
                    style: TextStyle(
                        color: genderValue == 'Female'
                            ? Colors.white
                            : Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

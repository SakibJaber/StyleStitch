import 'package:flutter/material.dart';
import 'package:style_stitch/theme/colors.dart';

class SolidButton extends StatelessWidget {
  const SolidButton(
      {super.key, required this.onPressed, required this.btnText, required this.width});
  final Function() onPressed;
  final String btnText;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.buttonColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.0),
            )),
        onPressed: onPressed,
        child: SizedBox(
          width: MediaQuery.of(context).size.width * width,
          child: Center(
            child: Text(
              btnText,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12.5,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.05,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

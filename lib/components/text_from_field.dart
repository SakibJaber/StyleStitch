import 'package:flutter/material.dart';
import 'package:style_stitch/theme/colors.dart';

class TextFromField extends StatelessWidget {
  const TextFromField({
    super.key,
    required this.labelText,
    this.prefixIcon,
    this.validator,
    required this.keyboardType, this.textEditingController,
  });

  final String labelText;
  final TextInputType keyboardType;
  final Widget? prefixIcon;
  final String? Function(String? value)? validator;
  final TextEditingController? textEditingController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 45,
      child: TextFormField(
        // keyboardType: TextInputType.number,
        keyboardType: keyboardType,
        controller: textEditingController,
        style: TextStyle(
          color: AppColor.captionColor,
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
        validator: validator,
        // controller: controller.loginEditController, //? controller
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.only(top: 20, left: 10, bottom: 2, right: 10),
          labelText: labelText,
          labelStyle: TextStyle(
            color: AppColor.captionColor,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
          prefixIcon: prefixIcon,
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
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
              width: 1,
            ),
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
              width: 1,
            ),
          ),
        ),
      ),
    );
  }
}

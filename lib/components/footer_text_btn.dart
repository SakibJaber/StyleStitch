import 'package:flutter/material.dart';
import 'package:style_stitch/theme/colors.dart';

class FooterTextBtn extends StatelessWidget {
  const FooterTextBtn({super.key, required this.title});
    final String title;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 60),
          width: MediaQuery.of(context).size.width,
          child: Text(
            title,
            style: TextStyle(
              fontSize: 11.5,
              fontWeight: FontWeight.w600,
              color: AppColor.headingColor6,
            ),
          ),
        ),
      ),
    );
  }
}

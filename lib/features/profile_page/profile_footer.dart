import 'package:flutter/material.dart';
import 'package:style_stitch/components/footer_text_btn.dart';

class ProfileFooter extends StatelessWidget {
  const ProfileFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        FooterTextBtn(
          title: 'FAQ',
        ),
        FooterTextBtn(
          title: 'ABOUT US',
        ),
        FooterTextBtn(
          title: 'TERMS OF USE',
        ),
        FooterTextBtn(
          title: 'PRIVACY POLICY',
        ),
      ],
    );
  }
}

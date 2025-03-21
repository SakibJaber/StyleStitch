import 'package:flutter/material.dart';

class SPIcon extends StatelessWidget {
  const SPIcon(
      {super.key, required this.assetname,   this.isSelected=false});
  final String assetname;
  // final int? index;
  // final int? currentIndex;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/$assetname",
      height: 25,
      width: 25,
      color: isSelected ? const Color(0xfffe416c) : Colors.black,
    );
  }
}

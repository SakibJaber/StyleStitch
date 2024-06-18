import 'package:flutter/material.dart';
import 'package:style_stitch/features/register/register_page.dart';
import 'package:style_stitch/theme/colors.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldBgColor,
      // body: const SafeArea(child: Text('Category')),
      body: RegisterPage(),
    );
  }
}

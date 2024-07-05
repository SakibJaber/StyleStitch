import 'package:flutter/material.dart';
import 'package:style_stitch/features/product_page/product_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ProductPage();
    // return const Scaffold(
    //   body: Center(
    //     child: Text('home'),
    //   ),
    // );
  }
}

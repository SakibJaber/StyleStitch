import 'package:flutter/material.dart';
import 'package:style_stitch/features/categories/categories_page.dart';
import 'package:style_stitch/features/home_page/home_page.dart';
import 'package:style_stitch/features/profile_page/profile_page.dart';
import 'package:style_stitch/features/sp_icon/sp_icon.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int currentIndex = 0;
  List<Widget> pages = [
    const HomePage(),
    const CategoriesPage(),
    const ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: const Color(0xfffe416c),
        selectedLabelStyle: const TextStyle(fontSize: 13),
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SPIcon(
              assetname: "logo-black.png",
         isSelected: 0==currentIndex,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SPIcon(
              assetname: "categories.png",
               isSelected: 1==currentIndex,
            ),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            icon: SPIcon(
              assetname: "profile.png",
            isSelected: 2==currentIndex,
            ),
            label: "Profile",
          ),
        ],
      ),
      body: pages[currentIndex],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:style_stitch/features/sp_icon/sp_icon.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int currentIndex = 0;
  // List<Widget> pages = [HomePage(), Categories(), Profile()];
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
          items: const [
            BottomNavigationBarItem(
              icon: SPIcon(
                assetname: "logo-black.png",
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: SPIcon(
                assetname: "categories.png",
              ),
              label: "Categories",
            ),
            BottomNavigationBarItem(
              icon: SPIcon(
                assetname: "profile.png",
              ),
              label: "Profile",
            ),
          ],
        ),
        body: const Text('data')
        //  pages[currentIndex],
        );
  }
}

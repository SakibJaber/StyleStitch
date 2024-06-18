import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:style_stitch/components/profile_item.dart';
import 'package:style_stitch/components/solid_button.dart';
import 'package:style_stitch/features/login/login_bottomsheet.dart';
import 'package:style_stitch/features/profile_page/profile_footer.dart';
import 'package:style_stitch/theme/colors.dart';

class GeneralProfile extends StatelessWidget {
  GeneralProfile({super.key});
  var topContainerHeight = 190.0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: topContainerHeight,
            child: Stack(
              children: [
                Column(
                  children: [
                    Container(
                      height: topContainerHeight * .58,
                      color: AppColor.dummyColor,
                    ),
                    Container(
                      height: topContainerHeight * .42,
                      color: AppColor.whiteColor,
                    ),
                  ],
                ),
                Positioned(
                  bottom: 20,
                  left: 20,
                  child: SizedBox(
                    height: 130.0,
                    width: 130.0,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'assets/images/profile.png',
                          color: AppColor.dummyColor,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 165,
                  child: SolidButton(
                    onPressed: () {
                      Get.bottomSheet(LoginBottomsheet());
                    },
                    btnText: 'LOG IN/SIGN UP',
                    width: 0.43,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 14.0,
          ),
          Container(
            color: AppColor.whiteColor,
            child: Column(
              children: [
                ProfileItem(
                  title: 'Order',
                  assetName: 'orders.png',
                  subtitle: 'Check your order',
                  isLast: false,
                  onTap: () {
                    Get.bottomSheet(LoginBottomsheet());
                  },
                ),
                const ProfileItem(
                  title: 'Help Center',
                  assetName: 'help-desk.png',
                  subtitle: 'Help regarding your recent purchase',
                  isLast: false,
                ),
                const ProfileItem(
                  title: 'WishList',
                  assetName: 'wishlist.png',
                  subtitle: 'Your most loved style',
                  isLast: true,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 14.0,
          ),
          Container(
            color: AppColor.whiteColor,
            child: const Column(
              children: [
                ProfileItem(
                  title: 'Scan for coupon',
                  assetName: 'qr-code.png',
                  isLast: false,
                ),
                ProfileItem(
                  title: 'Refer & Earn',
                  assetName: 'envelope.png',
                  isLast: true,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 14.0,
          ),
          const ProfileFooter(),
          const SizedBox(
            height: 14.0,
          ),
          Text(
            'APP VERSION 0.0.1',
            style: TextStyle(color: AppColor.textColor2, fontSize: 11),
          ),
          const SizedBox(
            height: 18.0,
          ),
        ],
      ),
    );
  }
}

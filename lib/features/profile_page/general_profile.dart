import 'package:flutter/material.dart';
import 'package:style_stitch/components/profile_item.dart';
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
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColor.buttonColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          )),
                      onPressed: () {},
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * .43,
                        child: const Center(
                          child: Text(
                            'LOG IN/SIGN UP',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.5,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.05,
                            ),
                          ),
                        ),
                      ),
                    )),
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
                  title: 'Order',
                  assetName: 'orders.png',
                  subtitle: 'Check your order',
                  isLast: false,
                ),
                ProfileItem(
                  title: 'Help Center',
                  assetName: 'help-desk.png',
                  subtitle: 'Help regarding your recent purchase',
                  isLast: false,
                ),
                ProfileItem(
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
           Text('APP VERSION 0.0.1',style: TextStyle(color: AppColor.textColor2,fontSize: 11),),
          const SizedBox(
            height: 18.0,
          ),
        ],
      ),
    );
  }
}

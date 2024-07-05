import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:style_stitch/features/product_page/model/product_model.dart';
import 'package:style_stitch/theme/colors.dart';

class ProductCard extends StatelessWidget {
  final ProductItem item;
  const ProductCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2,
      child: Padding(
        padding: const EdgeInsets.all(0.2),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 3,
              child: Stack(
                children: [
                  Container(
                    decoration:  BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        // image: NetworkImage(
                        //     'https://cdn.pixabay.com/photo/2024/05/05/05/34/ai-generated-8740242_1280.jpg'),
                        image: NetworkImage(
                            'http://192.168.0.105:3000/images/${item.imageUrl}.jpg'),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 17,
                    left: -27,
                    child: Transform.rotate(
                      angle: -0.785398,
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 10),
                        // height: 33,
                        width: 120,
                        decoration: const BoxDecoration(
                            // borderRadius: BorderRadius.,
                            color: Colors.white70),
                        child: Text(
                            '${(((item.actualPrice - item.discountedPrice) / item.actualPrice) * 100).toStringAsFixed(2)}% OFF',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: AppColor.buttonColor)),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 12,
                    left: 9,
                    child: Container(
                      // height: 33,
                      // width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.white70),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 6),
                        child: Row(
                          children: [
                            Text(item.rating.toString()),
                            Icon(
                              Icons.star,
                              size: 18,
                              color: AppColor.puregold,
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 6),
                              child: Text('|'),
                            ),
                            Text('${item.noOfReview ?? ''}k'),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            item.name.toString(),
                            style: const TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.w600),
                          ),
                        ),
                        SizedBox(
                          // padding: const EdgeInsets.all(0),
                          // width: 25,
                          height: 25,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              CupertinoIcons.heart,
                              color: AppColor.headingColor6,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Text(
                    item.desc,
                    style: TextStyle(color: AppColor.headingColor6),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  RichText(
                    text: TextSpan(children: [
                      const WidgetSpan(
                          alignment: PlaceholderAlignment.baseline,
                          baseline: TextBaseline.alphabetic,
                          child: SizedBox(width: 0)),
                      TextSpan(
                          text: "\$${item.actualPrice}",
                          style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              color: AppColor.headingColor6)),
                      const WidgetSpan(
                          alignment: PlaceholderAlignment.baseline,
                          baseline: TextBaseline.alphabetic,
                          child: SizedBox(width: 20)),
                      TextSpan(
                          text: "\$${item.discountedPrice}",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: AppColor.dummyColor)),
                    ]),
                  ),
                  const SizedBox(
                    height: 5,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:project_final/config/widget/size_config.dart';
import 'package:project_final/config/widget/text_config.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
              alignment: Alignment.topCenter,
              color: Colors.grey,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: getWidth(context, width: 0.1),
                      height: getHeight(context, height: 0.05),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.grey,
                          border: Border.all(color: Colors.white)),
                      child: const Icon(
                        Icons.arrow_back,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.favorite,
                    color: Colors.redAccent,
                    size: 30,
                  ),
                  PopupMenuButton(
                    icon: const Icon(
                      Icons.more_vert,
                      size: 30,
                      color: Colors.white,
                    ),
                    itemBuilder: (context) => [
                      const PopupMenuItem(child: Text('Show all')),
                      const PopupMenuItem(child: Text('Favorite')),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: Colors.white),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getWidth(context, width: 0.05),
                  vertical: getHeight(context),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'FRUITS',
                      style: largeTextStyle(context, color: Colors.blue),
                    ),
                    spaceHeight(context, height: 0.02),
                    Text(
                      'Organic Lemons',
                      style: largeTextStyle(context),
                    ),
                    spaceHeight(context),
                    const Text(
                        'Libero officia unde distinctio rem dolor perspiciatis. Alias magnam voluptatem minima facere quia. Nostrum recusandae facilis ut saepe dolor. Temporibus eaque eos similique porro ipsa ipsum minima praesentium. Ipsam sequi ut corporis id voluptatem nobis repellat tenetur.'),
                    spaceHeight(context),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 30,
                        ),
                        Text(
                          '4.6 ( 99 reviews)',
                          style: mediumTextStyle(context),
                        ),
                        const Expanded(child: SizedBox()),
                        const Icon(
                          Icons.airport_shuttle,
                          size: 30,
                          color: Colors.green,
                        ),
                        spaceWidth(context, width: 0.02),
                        Text(
                          'FREE DELIVERY',
                          style: largeTextStyle(context,
                              color: Colors.green, size: 0.03),
                        ),
                      ],
                    ),
                    spaceHeight(context, height: 0.02),
                    Text(
                      'Price',
                      style: mediumTextStyle(context),
                    ),
                    Row(
                      children: [
                        Text(
                          '5.8\$',
                          style: largeTextStyle(context),
                        ),
                        const Expanded(child: SizedBox()),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: getWidth(context, width: 0.15),
                            height: getHeight(context, height: 0.06),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                                border: Border.all(color: Colors.black)),
                            child: Center(
                              child: Text(
                                '-',
                                style: largeTextStyle(context, size: 0.05),
                              ),
                            ),
                          ),
                        ),
                        spaceWidth(context),
                        Text(
                          '3',
                          style: largeTextStyle(context),
                        ),
                        spaceWidth(context),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: getWidth(context, width: 0.15),
                            height: getHeight(context, height: 0.06),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.lightGreenAccent,
                                border: Border.all(color: Colors.black)),
                            child: Center(
                              child: Text(
                                '+',
                                style: largeTextStyle(context,
                                    size: 0.04, color: Colors.green[800]),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    spaceHeight(context, height: 0.02),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.amber),
                      height: getHeight(context, height: 0.06),
                      width: getWidth(context, width: 0.5),
                      child: Center(
                        child: Text(
                          '20% OFF DISCOUNT',
                          style: largeTextStyle(context,
                              size: 0.025, color: Colors.white),
                        ),
                      ),
                    ),
                    spaceHeight(context),
                    Center(
                      child: Container(
                        height: getHeight(context, height: 0.09),
                        width: getWidth(context, width: 1),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.green),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.shopping_cart_outlined,
                              color: Colors.white,
                              size: 30,
                            ),
                            Text(
                              'ADD TO CART',
                              style:
                                  largeTextStyle(context, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

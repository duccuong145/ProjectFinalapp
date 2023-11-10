import 'package:flutter/material.dart';
import 'package:project_final/config/widget/size_config.dart';
import 'package:project_final/config/widget/text_config.dart';
import 'package:project_final/routes/roures.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        body: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              const Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    Expanded(child: SizedBox()),
                    Icon(
                      Icons.favorite,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                  ],
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
                    color: Colors.white,
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: getWidth(context),
                        vertical: getHeight(context),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'FRUITS',
                            style: largeTextStyle(context, color: Colors.green),
                          ),
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
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.yellow),
                                child: Text(
                                  '-',
                                  style: mediumTextStyle(context),
                                ),
                              ),
                              spaceWidth(context),
                              Text(
                                '3',
                                style: largeTextStyle(context),
                              ),
                              spaceWidth(context),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.green),
                                child: Text(
                                  '+',
                                  style: mediumTextStyle(context),
                                ),
                              ),
                            ],
                          ),
                          spaceHeight(context),
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
                          spaceHeight(context, height: 0.02),
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                minimumSize: const Size(100, 50),
                                backgroundColor: Colors.green,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(Icons.shopping_cart),
                                  spaceWidth(context, width: 0.02),
                                  Text(
                                    'ADD TO CARD ',
                                    style: largeTextStyle(context,
                                        color: Colors.white),
                                  )
                                ],
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

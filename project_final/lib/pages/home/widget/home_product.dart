import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:project_final/config/widget/size_config.dart';
import 'package:project_final/config/widget/text_config.dart';
import 'package:project_final/routes/roures.dart';

class HomeProduct extends StatelessWidget {
  const HomeProduct({super.key});
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
        childAspectRatio: 1 / 2,
      ),
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          padding: EdgeInsets.only(bottom: getHeight(context, height: 0.02)),
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                offset: const Offset(1, 1),
                color: Colors.grey.shade100,
                blurRadius: 2,
                spreadRadius: 2,
              )
            ],
          ),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: getWidth(context, width: 0.02),
                      vertical: getHeight(context, height: 0.02)),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image:
                            AssetImage('assets/images/iphone-15-xtmobile.jpg'),
                        fit: BoxFit.cover),
                  ),
                  child: const LikeButton(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: SizedBox(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: getWidth(context, width: 0.02),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Iphone 15 Pro Max',
                          style: mediumTextStyle(context, size: 0.02),
                          maxLines: 1,
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  '\$9.99',
                                  style: mediumTextStyle(context,
                                      color: Colors.yellow[800], size: 0.02),
                                ),
                              ),
                              Text(
                                '(243)',
                                style: mediumTextStyle(context,
                                    size: 0.02, color: Colors.blueGrey),
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow[600],
                              )
                            ],
                          ),
                        ),
                        spaceHeight(context, height: 0.01),
                        Container(
                          height: getHeight(context, height: 0.07),
                          width: getWidth(context, width: 0.32),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.green[100]),
                          child: Center(
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, Routes.productDetailPage);
                              },
                              child: Text(
                                'Add to cart',
                                style: mediumTextStyle(context,
                                    color: Colors.green[700]),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

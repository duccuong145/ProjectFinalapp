import 'package:flutter/material.dart';
import 'package:project_final/config/widget/size_config.dart';
import 'package:project_final/config/widget/text_config.dart';

class SearchCategory extends StatelessWidget {
  const SearchCategory({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(15),
        itemBuilder: (context, index) {
          return Row(
            children: [
              Expanded(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  alignment: Alignment.topLeft,
                  width: getWidth(context, width: 0.2),
                  height: getHeight(context, height: 0.2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey,
                  ),
                  child: const Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                ),
              ),
              spaceWidth(context),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Fresh Tomatoes',
                      style: mediumTextStyle(context),
                    ),
                    spaceHeight(context),
                    Text(
                      '\$ 5.0',
                      style: mediumTextStyle(context),
                    ),
                    spaceHeight(context, height: 0.05),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Disc. 10% Off',
                            style: smallTextStyle(context,
                                size: 0.02, color: Colors.yellow),
                          ),
                        ),
                        const Icon(
                          Icons.shopping_cart_sharp,
                          size: 30,
                          color: Colors.green,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            height: getHeight(context, height: 0.05),
          );
        },
        itemCount: 10);
  }
}

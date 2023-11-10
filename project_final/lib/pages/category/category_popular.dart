import 'package:flutter/material.dart';
import 'package:project_final/config/widget/itemcategory_config.dart';

import 'package:project_final/config/widget/size_config.dart';
import 'package:project_final/config/widget/text_config.dart';

class CategoryPopular extends StatelessWidget {
  const CategoryPopular({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Popular Deals',
              style: mediumTextStyle(context),
            ),
          ],
        ),
        spaceHeight(context),
        const ItemCategory()
      ],
    );
  }
}

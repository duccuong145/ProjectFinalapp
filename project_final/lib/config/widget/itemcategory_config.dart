import 'package:flutter/material.dart';
import 'package:project_final/config/widget/text_config.dart';
import 'package:project_final/pages/product/product_detail.dart';
import 'package:project_final/routes/roures.dart';

class ItemCategory extends StatelessWidget {
  const ItemCategory({super.key});
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1 / 2),
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage('assets/images/tomatoes01-lg.jpg'),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Text(
                    'Tomatoes',
                    style: largeTextStyle(context),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          '\$ 9.99',
                          style: mediumTextStyle(context, color: Colors.yellow),
                        ),
                      ),
                      Text(
                        '(243)',
                        style: mediumTextStyle(context),
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.productDetailPage);
                    },
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Add to card'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

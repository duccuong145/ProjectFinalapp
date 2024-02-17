import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_final/config/widget/size_config.dart';
import 'package:project_final/config/widget/text_config.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Good Morning',
          style: mediumTextStyle(context),
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                'Đ.Cường 👋',
                style: largeTextStyle(context, size: 0.05),
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              height: getHeight(context, height: 0.045),
              width: getWidth(context, width: 0.15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.grey),
              child: Container(
                height: getHeight(context, height: 0.045),
                width: getWidth(context, width: 0.075),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.amber),
                child: const Icon(
                  CupertinoIcons.bell,
                  size: 30,
                  color: Colors.yellow,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

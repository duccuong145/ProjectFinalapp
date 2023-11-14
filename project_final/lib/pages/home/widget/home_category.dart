import 'package:flutter/material.dart';
import 'package:project_final/config/widget/size_config.dart';
import 'package:project_final/config/widget/text_config.dart';

class HomeCategory extends StatelessWidget {
  const HomeCategory({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getHeight(context, height: 0.2),
      child: ListView.separated(
          padding: EdgeInsets.symmetric(
            horizontal: getHeight(context, height: 0.02),
            vertical: getWidth(context, width: 0.02),
          ),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              width: getWidth(context, width: 0.05),
            );
          },
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: EdgeInsets.symmetric(
                  vertical: getHeight(context, height: 0.02)),
              width: getWidth(context, width: 0.3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.primaries[index],
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/ic_Fruit.png'),
                              fit: BoxFit.scaleDown)),
                    ),
                  ),
                  Text(
                    'Fruits',
                    style: mediumTextStyle(context, color: Colors.white),
                  ),
                  Text(
                    '45 Item',
                    style: smallTextStyle(context, color: Colors.white),
                  ),
                ],
              ),
            );
          },
          itemCount: 4),
    );
  }
}

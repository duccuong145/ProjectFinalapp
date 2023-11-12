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
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              width: getWidth(context, width: 0.05),
            );
          },
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              width: getWidth(context, width: 0.3),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.primaries[index],
                  image: const DecorationImage(
                      alignment: Alignment.topCenter,
                      image: AssetImage('assets/images/ic_Fruit.png'),
                      fit: BoxFit.scaleDown,
                      scale: 0.5)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
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

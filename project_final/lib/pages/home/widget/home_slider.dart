import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:project_final/config/widget/text_config.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({super.key});
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        enlargeCenterPage: true,
      ),
      itemCount: 10,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.primaries[itemIndex],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Happy Black Friday',
                style: mediumTextStyle(context),
              ),
              const Text(
                '20% OFF',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              Text(
                '*for All Menus',
                style: smallTextStyle(context, size: 0.02),
              )
            ],
          ),
        );
      },
    );
  }
}

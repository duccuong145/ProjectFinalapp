import 'package:flutter/material.dart';
import 'package:project_final/config/widget/itemproduct_config.dart';

import 'package:project_final/config/widget/size_config.dart';
import 'package:project_final/config/widget/text_config.dart';
import 'package:project_final/routes/roures.dart';

class Product extends StatelessWidget {
  const Product({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.popAndPushNamed(
                          context, Routes.categoryHomePage);
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
                  ),
                  Text(
                    'Fruits',
                    style: largeTextStyle(context, color: Colors.red),
                  ),
                  const Icon(
                    Icons.more_vert,
                    size: 30,
                  ),
                ],
              ),
              spaceHeight(context),
              const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Tìm kiếm',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(vertical: 8.0),
                ),
              ),
              spaceHeight(context),
              ItemProduct()
            ],
          ),
        ),
      ),
    );
  }
}

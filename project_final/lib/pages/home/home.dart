import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:project_final/config/widget/bottombar_config.dart';
import 'package:project_final/config/widget/size_config.dart';
import 'package:project_final/config/widget/text_config.dart';
import 'package:project_final/pages/home/widget/home_appbar.dart';
import 'package:project_final/pages/home/widget/home_category.dart';
import 'package:project_final/pages/home/widget/home_product.dart';
import 'package:project_final/pages/home/widget/home_search.dart';
import 'package:project_final/pages/home/widget/home_slider.dart';
import 'package:project_final/providers/category_provider.dart';
import 'package:project_final/routes/roures.dart';

import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _CategoryHomeState();
}

class _CategoryHomeState extends State<HomePage> {
  late Future categoryrFuture;
  @override
  void didChangeDependencies() {
    categoryrFuture = Provider.of<CategoryProvider>(context).getSlider();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeAppBar(),
              spaceHeight(context, height: 0.02),
              const HomeSearch(),
              spaceHeight(context, height: 0.02),
              const AspectRatio(
                aspectRatio: 2 / 1,
                child: SizedBox(
                  width: double.infinity,
                  child: HomeSlider(),
                ),
              ),
              spaceHeight(context, height: 0.02),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Categories',
                      style: mediumTextStyle(context),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      EasyLoading.showProgress(0.3, status: 'downloading...');
                      Future.delayed(const Duration(seconds: 2), () {
                        EasyLoading.dismiss();
                      });
                      Navigator.pushNamed(context, Routes.productCategoryPage);
                    },
                    child: const Icon(
                      Icons.keyboard_arrow_right_outlined,
                      size: 30,
                    ),
                  ),
                ],
              ),
              const HomeCategory(),
              spaceHeight(context, height: 0.02),
              const HomeProduct(),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:project_final/config/widget/bottombar_config.dart';
import 'package:project_final/config/widget/size_config.dart';
import 'package:project_final/config/widget/text_config.dart';
import 'package:project_final/routes/roures.dart';

class ProductCategory extends StatelessWidget {
  const ProductCategory({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsetsDirectional.symmetric(
              horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      EasyLoading.show(status: 'loading...');
                      Future.delayed(const Duration(seconds: 2), () {
                        EasyLoading.dismiss();
                      });
                      Navigator.pop(
                        context,
                      );
                    },
                    child: Container(
                      width: getWidth(context, width: 0.1),
                      height: getHeight(context, height: 0.05),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                          border: Border.all(color: Colors.black)),
                      child: const Icon(
                        Icons.arrow_back,
                        size: 30,
                      ),
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                  Text(
                    'Categories',
                    style: largeTextStyle(context, color: Colors.red),
                  ),
                  const Expanded(child: SizedBox()),
                  const Icon(
                    Icons.more_vert,
                    size: 30,
                  ),
                ],
              ),
              spaceHeight(context),
              Expanded(
                child: GridView.builder(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.primaries[index],
                          image: const DecorationImage(
                              image: AssetImage('assets/images/Vector.png'),
                              fit: BoxFit.scaleDown)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Fruits',
                              style:
                                  mediumTextStyle(context, color: Colors.white),
                            ),
                            Text(
                              '45 Items',
                              style:
                                  mediumTextStyle(context, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

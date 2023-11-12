import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:project_final/config/widget/size_config.dart';
import 'package:project_final/config/widget/text_config.dart';
import 'package:project_final/routes/roures.dart';

class HomeProduct extends StatelessWidget {
  const HomeProduct({super.key});
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
        childAspectRatio: 1 / 1.9,
      ),
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                offset: const Offset(1, 1),
                color: Colors.grey.shade100,
                blurRadius: 2,
                spreadRadius: 2,
              )
            ],
          ),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  alignment: Alignment.topLeft,
                  color: Colors.grey.shade400,
                  child: const Icon(
                    Icons.favorite_border_outlined,
                  ),
                ),
              ),
              spaceHeight(context, height: 0.02),
              Expanded(
                child: SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Column(
                      children: [
                        Text(
                          'Chicken Village',
                          style: mediumTextStyle(context),
                        ),
                        spaceHeight(context),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                '\$ 9.99',
                                style: mediumTextStyle(
                                  context,
                                  color: Colors.yellow[800],
                                ),
                              ),
                            ),
                            Text(
                              '(243)',
                              style: mediumTextStyle(context,
                                  color: Colors.blueGrey),
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow[600],
                            )
                          ],
                        ),
                        spaceHeight(context, height: 0.02),
                        Container(
                          height: getHeight(context, height: 0.07),
                          width: getWidth(context, width: 0.32),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.green[100]),
                          child: Center(
                            child: InkWell(
                              onTap: () {
                                EasyLoading.show(status: 'loading...');
                                Future.delayed(const Duration(seconds: 3), () {
                                  EasyLoading.dismiss();
                                });
                                Navigator.pushNamed(
                                    context, Routes.productDetailPage);
                              },
                              child: Text(
                                'Add to card',
                                style: mediumTextStyle(context,
                                    color: Colors.green[700]),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:project_final/config/widget/size_config.dart';
import 'package:project_final/config/widget/text_config.dart';
import 'package:project_final/routes/roures.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.green[600],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  spaceHeight(context, height: 0.05),
                  Center(
                    child: SizedBox(
                      height: getHeight(context, height: 0.4),
                      width: getWidth(context, width: 0.8),
                      child: Image.asset(
                        'assets/images/Group.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  spaceHeight(context, height: 0.05),
                  Text(
                    'Welcome to Tanam !',
                    style: mediumTextStyle(context,
                        size: 0.04, color: Colors.white),
                  ),
                  Text(
                    'Grocery Applications',
                    style: mediumTextStyle(context,
                        size: 0.04, color: Colors.white),
                  ),
                  spaceHeight(context),
                  Text(
                    'Omnis neque voluptatem dignissimos magnam commodi iure. Repellendus voluptatem et suscipit quaerat optio sunt inventore sint est. Odit modi nobis adipisci aut voluptatibus ut impedit. Omnis aliquam dolore aut et ut facilis maiores.',
                    style: smallTextStyle(context,
                        size: 0.02, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  spaceHeight(context),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: getHeight(context, height: 0.01),
                        width: getWidth(context, width: 0.01),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white),
                      ),
                      spaceWidth(context, width: 0.01),
                      Container(
                        height: getHeight(context, height: 0.01),
                        width: getWidth(context, width: 0.01),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(borderRadius(context)),
                            color: Colors.white),
                      ),
                    ],
                  ),
                  spaceHeight(context),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.signinPage);
                    },
                    child: Text(
                      'Next',
                      style: largeTextStyle(context, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

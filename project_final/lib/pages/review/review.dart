import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:project_final/config/widget/size_config.dart';
import 'package:project_final/config/widget/text_config.dart';
import 'package:project_final/pages/signin/signin_screen.dart';
import 'package:project_final/routes/roures.dart';

class ReviewPage extends StatefulWidget {
  const ReviewPage({super.key});

  @override
  State<ReviewPage> createState() => _HomePageState();
}

class _HomePageState extends State<ReviewPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (details) {
        if (details.velocity.pixelsPerSecond.dx > 0) {
        } else {
          EasyLoading.show(status: 'loading...');
          Future.delayed(const Duration(seconds: 3), () {
            EasyLoading.dismiss();
          });
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SigninScreen()),
          );
        }
      },
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: Colors.green[600],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                spaceHeight(context, height: 0.05),
                SizedBox(
                  child: Image.asset(
                    'assets/images/Group.png',
                    fit: BoxFit.contain,
                  ),
                ),
                spaceHeight(context, height: 0.05),
                Text(
                  'Welcome to Tanam !',
                  style:
                      mediumTextStyle(context, size: 0.04, color: Colors.white),
                ),
                Text(
                  'Grocery Applications',
                  style:
                      mediumTextStyle(context, size: 0.04, color: Colors.white),
                ),
                spaceHeight(context),
                Text(
                  'Odit modi nobis adipisci autOmnis neque voluptatem dignissimos magnam commodi iure. Repellendus voluptatem et suscipit quaerat optio sunt inventore sint est. Odit modi nobis adipisci autOmnis neque voluptatem dignissimos magnam commodi iure. Repellendus voluptatem et suscipit quaerat optio sunt inventore sint est. Odit modi nobis adipisci aut voluptatibus ut impedit. Omnis aliquam dolore aut et ut facilis maiores.',
                  style:
                      smallTextStyle(context, size: 0.02, color: Colors.white),
                  textAlign: TextAlign.center,
                  maxLines: 4,
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
    );
  }
}

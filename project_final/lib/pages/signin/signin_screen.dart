import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:project_final/config/widget/checkbox_config.dart';
import 'package:project_final/config/widget/size_config.dart';
import 'package:project_final/config/widget/text_config.dart';
import 'package:project_final/routes/roures.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Grocery App',
                  style: largeTextStyle(context, color: Colors.white),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome back',
                      style: largeTextStyle(context),
                    ),
                    spaceHeight(context),
                    Text(
                      'reprehenderit maiores modi',
                      style: smallTextStyle(context, size: 0.02),
                    ),
                    spaceHeight(context),
                    const TextField(
                      decoration: InputDecoration(
                        hintText: 'Name Account',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(
                          Icons.account_circle,
                          size: 30,
                        ),
                        fillColor: Colors.pink,
                      ),
                    ),
                    spaceHeight(context),
                    const TextField(
                      decoration: InputDecoration(
                        hintText: 'Password',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(
                          Icons.lock,
                          size: 30,
                        ),
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                          color: Colors.green,
                        ),
                        fillColor: Colors.green,
                      ),
                    ),
                    spaceHeight(context),
                    InkWell(
                      onTap: () {},
                      child: InkWell(
                        onTap: () {
                          EasyLoading.showSuccess('Great Success!');
                          Future.delayed(const Duration(seconds: 2), () {
                            EasyLoading.dismiss();
                          });
                          Navigator.pushNamed(context, Routes.homePage);
                        },
                        child: SizedBox(
                          width: double.infinity,
                          height: getHeight(context, height: 0.08),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.green),
                            child: Center(
                              child: Text(
                                'SIGN IN',
                                style: largeTextStyle(context,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    spaceHeight(context, height: 0.025),
                    Row(
                      children: [
                        const CheckBox(),
                        const Expanded(
                          child: Text('Keep Sign in'),
                        ),
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, Routes.signinPage);
                            },
                            child: const Text('Forgot Pasword?'),
                          ),
                        ),
                      ],
                    ),
                    spaceHeight(context, height: 0.02),
                    Center(
                      child: Text(
                        'Do not have an account ?',
                        style: mediumTextStyle(context),
                      ),
                    ),
                    spaceHeight(context, height: 0.02),
                    SizedBox(
                      width: double.infinity,
                      height: getHeight(context, height: 0.08),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.green),
                        child: Center(
                          child: Text(
                            'CREATE AN ACCOUNT',
                            style: largeTextStyle(context, color: Colors.white),
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
  }
}

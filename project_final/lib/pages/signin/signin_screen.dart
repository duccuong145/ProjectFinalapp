import 'package:flutter/material.dart';
import 'package:project_final/config/widget/checkbox_config.dart';
import 'package:project_final/config/widget/size_config.dart';
import 'package:project_final/config/widget/text_config.dart';
import 'package:project_final/routes/roures.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
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
                            icon: Icon(
                              Icons.account_circle,
                              size: 40,
                            ),
                            border: OutlineInputBorder(),
                            hintText: 'Tên tài khoản',
                          ),
                        ),
                        spaceHeight(context),
                        const TextField(
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.lock,
                              size: 40,
                            ),
                            border: OutlineInputBorder(),
                            labelText: "Password",
                            suffixIcon: Icon(
                              Icons.remove_red_eye,
                              size: 30,
                            ),
                          ),
                        ),
                        spaceHeight(context),
                        SizedBox(
                          width: double.infinity,
                          height: getHeight(context, height: 0.07),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, Routes.categoryHomePage);
                            },
                            child: Text(
                              'SIGN IN',
                              style:
                                  largeTextStyle(context, color: Colors.white),
                            ),
                          ),
                        ),
                        spaceHeight(context),
                        Row(
                          children: [
                            const CheckBox(),
                            const Expanded(
                              child: Text('Keep Sign in'),
                            ),
                            Expanded(
                              child: TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, Routes.signinPage);
                                },
                                child: const Text('Forgot Pasword?'),
                              ),
                            ),
                          ],
                        ),
                        spaceHeight(context),
                        Center(
                          child: Text(
                            'Do not have an account ?',
                            style: mediumTextStyle(context),
                          ),
                        ),
                        spaceHeight(context),
                        SizedBox(
                          width: double.infinity,
                          height: getHeight(context, height: 0.07),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'CREATE AN ACCOUNT',
                              style:
                                  largeTextStyle(context, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

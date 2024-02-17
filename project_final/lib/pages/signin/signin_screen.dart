import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_final/config/widget/checkbox_config.dart';
import 'package:project_final/config/widget/size_config.dart';
import 'package:project_final/config/widget/text_config.dart';
import 'package:project_final/providers/auth_provider.dart';
import 'package:project_final/routes/roures.dart';
import 'package:provider/provider.dart';

class SigninScreen extends StatefulWidget {
  SigninScreen({Key? key}) : super(key: key);

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    void handleSubmit() {
      final email = widget._emailController.text;
      final password = widget._passwordController.text;
      if (email.isNotEmpty && password.isNotEmpty) {
        Provider.of<AuthProvider>(context, listen: false)
            .login(email, password);
      }
    }

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
                child: SingleChildScrollView(
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
                      TextField(
                        controller: widget._emailController,
                        decoration: const InputDecoration(
                          hintText: 'Email',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(
                            Icons.account_circle,
                            size: 30,
                          ),
                          fillColor: Colors.pink,
                        ),
                      ),
                      spaceHeight(context),
                      TextFormField(
                        controller: widget._passwordController,
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          border: const OutlineInputBorder(),
                          prefixIcon: const Icon(
                            Icons.lock,
                            size: 30,
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscureText
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                          ),
                        ),
                      ),
                      spaceHeight(context),
                      InkWell(
                        onTap: () {
                          handleSubmit();
                          Future.delayed(const Duration(seconds: 1), () {});
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
                      spaceHeight(context, height: 0.04),
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
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, Routes.signupPage);
                            },
                            child: Center(
                              child: Text(
                                'CREATE AN ACCOUNT',
                                style: largeTextStyle(context,
                                    size: 0.03, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

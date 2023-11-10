import 'package:flutter/material.dart';
import 'package:project_final/config/widget/bottombar_config.dart';

class RootPage extends StatelessWidget {
  const RootPage({super.key});
  @override
  Widget build(BuildContext context) {
    bool isLogin = true;
    if (isLogin) {
      return const BottomBar();
    }
  }
}

import 'package:flutter/material.dart';
import 'package:project_final/config/widget/bottombar_config.dart';
import 'package:project_final/config/widget/itemcategory_config.dart';
import 'package:project_final/config/widget/itemproduct_config.dart';
import 'package:project_final/pages/category/category_home.dart';
import 'package:project_final/pages/home/home.dart';
import 'package:project_final/pages/product/product.dart';
import 'package:project_final/pages/product/product_categoty.dart';
import 'package:project_final/pages/product/product_detail.dart';
import 'package:project_final/pages/profile/profile.dart';
import 'package:project_final/pages/signin/signin_screen.dart';
import 'package:project_final/providers/category_provider.dart';
import 'package:project_final/providers/theme_provider.dart';
import 'package:project_final/routes/roures.dart';
import 'package:project_final/routes/route_name.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => CategoryProvider(),
          ),
          ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ],
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.homePage,
          onGenerateRoute: RouteName.onGenerateRoute,
        ),
      ),
    );
  }
}

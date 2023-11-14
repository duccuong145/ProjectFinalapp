import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:project_final/config/widget/bottombar_config.dart';

import 'package:project_final/pages/review/review.dart';

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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CategoryProvider(),
        ),
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          return MaterialApp(
            builder: EasyLoading.init(),
            theme:
                themeProvider.isDarkMode ? ThemeData.dark() : ThemeData.light(),
            darkTheme: ThemeData(
              brightness: Brightness.dark,
              textTheme: const TextTheme(
                bodyLarge: TextStyle(color: Colors.blue),
              ),
            ),
            themeMode: ThemeMode.light,
            debugShowCheckedModeBanner: false,
            initialRoute: Routes.bottomBarPage,
            onGenerateRoute: RouteName.onGenerateRoute,
          );
        },
      ),
    );
  }
}

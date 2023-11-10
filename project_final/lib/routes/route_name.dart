import 'package:flutter/material.dart';
import 'package:project_final/config/widget/bottombar_config.dart';
import 'package:project_final/config/widget/itemcategory_config.dart';
import 'package:project_final/config/widget/itemproduct_config.dart';
import 'package:project_final/pages/category/category_home.dart';
import 'package:project_final/pages/category/category_popular.dart';
import 'package:project_final/pages/home/home.dart';
import 'package:project_final/pages/product/product.dart';
import 'package:project_final/pages/product/product_categoty.dart';
import 'package:project_final/pages/product/product_detail.dart';
import 'package:project_final/pages/profile/profile.dart';
import 'package:project_final/pages/signin/signin_screen.dart';
import 'package:project_final/routes/roures.dart';

class RouteName {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homePage:
        return MaterialPageRoute(builder: (_) => const HomePage());

      case Routes.signinPage:
        return MaterialPageRoute(builder: (_) => const SigninScreen());
      case Routes.categoryHomePage:
        return MaterialPageRoute(builder: (_) => const CategoryHome());
      case Routes.productDetailPage:
        return MaterialPageRoute(builder: (_) => const ProductDetail());
      case Routes.productPage:
        return MaterialPageRoute(builder: (_) => const Product());
      case Routes.profilePage:
        return MaterialPageRoute(builder: (_) => const Profile());
      case Routes.productCategoryPage:
        return MaterialPageRoute(builder: (_) => const ProductCategory());
      case Routes.bottomBarPage:
        return MaterialPageRoute(builder: (_) => const BottomBar());
      case Routes.categoryPopularPage:
        return MaterialPageRoute(builder: (_) => const CategoryPopular());
      case Routes.itemCategoryPage:
        return MaterialPageRoute(builder: (_) => const ItemCategory());
      case Routes.itemProductPage:
        return MaterialPageRoute(builder: (_) => const ItemProduct());

      default:
        return MaterialPageRoute(builder: (_) => const HomePage());
    }
  }
}

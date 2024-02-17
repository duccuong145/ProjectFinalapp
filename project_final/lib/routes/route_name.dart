import 'package:flutter/material.dart';
import 'package:project_final/config/widget/bottombar_config.dart';

import 'package:project_final/pages/home/home.dart';
import 'package:project_final/pages/home/widget/home_category.dart';

import 'package:project_final/pages/review/review.dart';

import 'package:project_final/pages/product/product_categoty.dart';
import 'package:project_final/pages/product/product_detail.dart';
import 'package:project_final/pages/profile/profile.dart';
import 'package:project_final/pages/search/search.dart';
import 'package:project_final/pages/search/search_body.dart/search_appbar.dart';
import 'package:project_final/pages/search/search_body.dart/search_category.dart';
import 'package:project_final/pages/signin/signin_screen.dart';
import 'package:project_final/pages/signup/signup_page.dart';
import 'package:project_final/routes/roures.dart';

class RouteName {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.reviewPage:
        return MaterialPageRoute(builder: (_) => const ReviewPage());

      case Routes.signinPage:
        return MaterialPageRoute(builder: (_) => SigninScreen());
      case Routes.productDetailPage:
        return MaterialPageRoute(builder: (_) => const ProductDetail());
      case Routes.searchPage:
        return MaterialPageRoute(builder: (_) => const SearchPage());
      case Routes.profilePage:
        return MaterialPageRoute(builder: (_) => const Profile());
      case Routes.productCategoryPage:
        return MaterialPageRoute(builder: (_) => const ProductCategory());
      case Routes.bottomBarPage:
        return MaterialPageRoute(builder: (_) => const BottomBar());
      case Routes.homePage:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case Routes.homeCategoryPage:
        return MaterialPageRoute(builder: (_) => const HomeCategory());
      case Routes.searchCategoryPage:
        return MaterialPageRoute(builder: (_) => const SearchCategory());
      case Routes.signupPage:
        return MaterialPageRoute(builder: (_) => const SignupScreen());

      default:
        return MaterialPageRoute(builder: (_) => const ReviewPage());
    }
  }
}

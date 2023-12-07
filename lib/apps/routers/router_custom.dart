import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:routers/apps/routers/router_name.dart';
import 'package:routers/pages/article/article_page.dart';
import 'package:routers/pages/category/category_page.dart';
import 'package:routers/pages/home/home_page.dart';
import 'package:routers/pages/login/login_page.dart';

class RouterCustom {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouterName.loginPage:
        return PageTransition(
          child: const LoginPage(),
          type: PageTransitionType.fade,
        );
      case RouterName.homePage:
        return PageTransition(
          child: const HomePages(),
          type: PageTransitionType.fade,
        );
      case RouterName.categoryPage:
        return PageTransition(
          child: const CategoryPage(),
          type: PageTransitionType.fade,
        );
      case RouterName.articlePage:
        return PageTransition(
          child: const ArticlePage(),
          type: PageTransitionType.fade,
        );
      default:
        return PageTransition(
          child: const LoginPage(),
          type: PageTransitionType.fade,
        );
    }
  }
}

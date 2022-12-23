import 'package:flutter/material.dart';
import 'package:mini_contabil_v2/utils/consts.dart';
import 'package:mini_contabil_v2/pages/home_page/home_page.dart';
import 'package:mini_contabil_v2/pages/calc_rate/calc_pro_rata.dart';
import 'package:mini_contabil_v2/pages/simple_interest/simple_interest.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case calcSimpleInterest:
        return MaterialPageRoute(
            builder: (_) => const CalcSimpleInterestPage());
      case calcRatePage:
        return MaterialPageRoute(builder: (_) => const CalcProRataPage());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}

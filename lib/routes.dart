import 'package:flutter/material.dart';
import 'package:mini_contabil_v2/consts.dart';
import 'package:mini_contabil_v2/home_page.dart';
import 'package:mini_contabil_v2/pages/calc_rate/calc_rate.dart';
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
        return MaterialPageRoute(builder: (_) => const CalcRatePage());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}

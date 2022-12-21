import 'package:flutter/material.dart';
import 'package:mini_contabil_v2/consts.dart';
import 'package:mini_contabil_v2/home_page.dart';
import 'package:mini_contabil_v2/simple_interest.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case homeRoute:
      return MaterialPageRoute(builder: (_) => const HomePage());
    case simpleInterest:
      return MaterialPageRoute(builder: (_) => SimpleInterest());
    default:
      return MaterialPageRoute(
          builder: (_) => Scaffold(
                body: Center(
                    child: Text('No route defined for ${settings.name}')),
              ));
  }
}

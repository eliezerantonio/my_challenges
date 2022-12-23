import 'package:flutter/material.dart';
import 'package:mini_contabil_v2/pages/calc_labour_income/calc_labour_income.dart';
import 'package:mini_contabil_v2/pages/home_page/home_page.dart';
import 'package:mini_contabil_v2/pages/simple_interest/simple_interest.dart';
import 'package:mini_contabil_v2/pages/vat_calc/vat_calc_page.dart';
import 'package:mini_contabil_v2/pages/widgets/custom_dialog.dart';
import 'package:mini_contabil_v2/utils/consts.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case calcSimpleInterest:
        return MaterialPageRoute(
            builder: (_) => const CalcSimpleInterestPage());
      case calcVatPage:
        return MaterialPageRoute(builder: (_) => const CalcVatPage());
      case calcInssPage:
        return MaterialPageRoute(builder: (_) => const LabourIncomePage());
      case dialogBoxPage:
        return MaterialPageRoute(builder: (_) => const CustomDialogBox());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}

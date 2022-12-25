import 'package:flutter/material.dart';
import 'package:mini_contabil_v2/utils/consts.dart';
import 'package:mini_contabil_v2/utils/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const MiniContabil(),
  );
}

class MiniContabil extends StatelessWidget {
  const MiniContabil({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(visualDensity: VisualDensity.adaptivePlatformDensity),
      initialRoute: homePage,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

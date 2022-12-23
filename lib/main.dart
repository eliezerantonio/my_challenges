import 'package:flutter/material.dart';
import 'package:mini_contabil_v2/utils/consts.dart';
import 'package:mini_contabil_v2/utils/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: const Color.fromARGB(255, 250, 250, 250),
        primarySwatch: Colors.blue,
      ),
      initialRoute: homePage,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

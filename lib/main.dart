import 'package:flutter/material.dart';
import 'package:mini_contabil_v2/consts.dart';
import 'package:mini_contabil_v2/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: homeRoute,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

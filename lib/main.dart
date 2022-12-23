import 'package:flutter/material.dart';
import 'package:mini_contabil_v2/providers/theme_provider.dart';
import 'package:mini_contabil_v2/utils/consts.dart';
import 'package:mini_contabil_v2/utils/routes.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ChangeNotifierProvider<ThemeProvider>(
      create: (_) => ThemeProvider()..initialize(),
      child: const MiniContabil(),
    ),
  );
}

class MiniContabil extends StatelessWidget {
  const MiniContabil({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: ((context, provider, child) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        themeMode: provider.themeMode,
        initialRoute: homePage,
        onGenerateRoute: RouteGenerator.generateRoute,
      );
    }));
  }
}

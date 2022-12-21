import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_contabil_v2/widget/custom_drawer.dart';
import 'package:mini_contabil_v2/widget/home_cards.dart';
import 'package:rive/rive.dart';

import 'animations/custom_shake.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pageController = PageController(viewportFraction: 0.9);
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        drawer: const CustomDrawer(),
        body: Stack(children: [
          const RiveAnimation.asset('assets/homepage.riv'),
          Image.asset('assets/background2.jpg'),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: const SizedBox(),
            ),
          ),
          SafeArea(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: 450.0,
                width: 380.0,
                child: PageView.builder(
                  physics: const BouncingScrollPhysics(),
                  controller: pageController,
                  itemCount: 5,
                  itemBuilder: ((context, index) {
                    const card = HomePageCards();
                    if (currentIndex == index) {
                      return LeftRightShake(child: card);
                    } else {
                      return RightLeftShake(child: card);
                    }
                  }),
                ),
              ),
            ),
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  icon: const Icon(Icons.menu, color: Colors.white),
                  onPressed: () {
                    _scaffoldKey.currentState!.openDrawer();
                  },
                ),
                const Center(
                    child: Text(
                  'Mini-Contabil v2',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
              ],
            ),
          ),
        ]));
  }
}

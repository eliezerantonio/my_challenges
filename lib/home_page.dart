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
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: InkWell(
                onTap: () {
                  _scaffoldKey.currentState!.openDrawer();
                },
                child: Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: const Icon(
                    Icons.menu,
                    color: Color.fromARGB(255, 50, 50, 50),
                  ),
                ),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 35.0, horizontal: 35.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Mini-Contabil',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'O Seu Cantinho Contabilistico...',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  ),
                ],
              ),
            ),
          ),
        ]));
  }
}

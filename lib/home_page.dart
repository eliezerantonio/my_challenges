import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_contabil_v2/widget/home_cards.dart';
import 'package:rive/rive.dart';

import 'animations/custom_shake.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pageController = PageController(viewportFraction: 1.5);

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      const RiveAnimation.asset('assets/homepage.riv'),
      Image.asset('assets/background.jpg'),
      Positioned.fill(
        child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: const SizedBox()),
      ),
      SafeArea(
        child: Center(
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
      SafeArea(
          child: IconButton(
        icon: const Icon(Icons.menu, color: Colors.white),
        onPressed: () {
          print('opened');
        },
      )),
    ]));
  }
}



/*
SizedBox(
        height: 420.0,
        width: 30.0,
        child: SafeArea(
          child: PageView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: Data.cards.length,
            controller: pageController,
            onPageChanged: (int index) => setState(() {
              currentIndex = index;
            }),
            itemBuilder: ((context, index) {
              final cardData = Data.cards[index];

              final card = CardWidget(
                title: cardData.title,
                description: cardData.description,
                color: cardData.color,
                subtitle: cardData.subtitle,
                urlImage: cardData.imgUrl,
              );

              if (currentIndex == index) {
                return LeftRightShake(child: card);
              } else {
                return RightLeftShake(child: card);
              }
            }),
          ),
        ),
      ),
     */ 
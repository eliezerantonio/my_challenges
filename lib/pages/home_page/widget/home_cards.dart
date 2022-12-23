import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';

class HomePageCards extends StatefulWidget {
  const HomePageCards({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePageCards> createState() => _HomePageCardsState();
}

class _HomePageCardsState extends State<HomePageCards> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 450.0,
        width: 380.0,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 50, 50, 50),
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  'assets/background.jpg',
                  fit: BoxFit.fitWidth,
                  height: 230.0,
                  width: 330.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BounceInUp(
                      child: const Text(
                        'Juros Simples (No Tempo)',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    BounceInUp(
                      child: const Text(
                        'O juro simples é uma taxa previamente definida e que incide somente sobre o valor inicial.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Color.fromARGB(255, 226, 226, 226),
                          fontFamily: 'Inter',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 55.0),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

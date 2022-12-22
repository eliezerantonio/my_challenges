import 'package:flutter/material.dart';

class HomePageCards extends StatelessWidget {
  const HomePageCards({
    Key? key,
  }) : super(key: key);

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
                    const Text(
                      'Juros Simples (No Tempo)',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    const Text(
                      'O juro simples é uma taxa previamente definida e que incide somente sobre o valor inicial.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Color.fromARGB(255, 226, 226, 226),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    Center(
                      child: GestureDetector(
                        onTap: () => print('tapped'),
                        child: Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: const Center(
                            child: Text(
                              'Calcular',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
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

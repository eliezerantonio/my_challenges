import 'package:flutter/material.dart';

class HomePageCards extends StatelessWidget {
  const HomePageCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 430.0,
      width: 280.0,
      decoration: BoxDecoration(
        color: Colors.purple.shade200,
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: SingleChildScrollView(
       c
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
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Juros Simples',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'O juro simples é uma taxa previamente definida e que incide somente sobre o valor inicial.',
                    style: TextStyle(
                      color: Color.fromARGB(255, 226, 226, 226),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Formula:',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Juros = Capital Inicial * Taxa * Tempo',
                    style: TextStyle(
                      color: Color.fromARGB(255, 226, 226, 226),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Base de Cálculo: j = c * i * n',
                    style: TextStyle(
                      color: Color.fromARGB(255, 226, 226, 226),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  Center(
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
                            color: Colors.purple,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
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
    );
  }
}

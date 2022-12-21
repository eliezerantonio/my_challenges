import 'package:flutter/material.dart';

class SimpleInterest extends StatelessWidget {
  const SimpleInterest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 250, 250),
      body: SafeArea(
        child: Align(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(91, 0, 0, 0),
                        blurRadius: 1,
                        spreadRadius: 0.5,
                      )
                    ],
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Icon(
                              Icons.close,
                              color: Colors.black,
                            ),
                            //CircleAvatar(backgroundColor: Colors.red)
                          ],
                        ),
                        const SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Juros Simples',
                                    style: TextStyle(
                                        fontSize: 17.0,
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(height: 2),
                                Text('12 Dec 2022',
                                    style: TextStyle(
                                        fontSize: 10.0,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                            const CalculateButton(),
                          ],
                        ),
                        const SizedBox(height: 25.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const ResolutionTag(text: 'Dados'),
                            const SizedBox(height: 15.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                LeftTitle(text: 'Capital Inicial (c):'),
                                CapitalTextField(),
                              ],
                            ),
                            const Divider(),
                            const SizedBox(height: 15.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                LeftTitle(text: 'Taxa de Juros % (i):'),
                                SizedBox(width: 1),
                                TaxTimeTextField(text: '5%'),
                                Text(
                                  'Anual',
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const Divider(),
                            const SizedBox(height: 15.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                LeftTitle(text: 'Tempo (n):'),
                                SizedBox(width: 55),
                                TaxTimeTextField(text: '1'),
                                Text(
                                  'Anual',
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const Divider(),
                            const SizedBox(height: 15.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                LeftTitle(text: 'Juros Calculado (j):'),
                                Text(
                                  '1.000,00 AOA',
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const Divider(
                                thickness: 2, indent: 5, endIndent: 5),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const ResolutionTag(text: 'Resolução'),
                            const SizedBox(height: 15.0),
                            const LeftTitle(text: 'Formula: c * i * n'),
                            const Divider(),
                            const SizedBox(height: 15.0),
                            const Text(
                              'j: 1000,00 * 5% * 2',
                              style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey),
                            ),
                            const Divider(),
                            const SizedBox(height: 15.0),
                            const Text(
                              'j: 1000,00 * 0.05 * 2',
                              style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey),
                            ),
                            const Divider(),
                            const SizedBox(height: 15.0),
                            const Text(
                              'j: 40,00 AOA',
                              style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey),
                            ),
                            const Divider(),
                            const SizedBox(height: 15.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Valor Total Final',
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'j + c : 1.040,00 AOA',
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const Divider(indent: 5, endIndent: 5),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                const Text(
                  'Any Example of Text',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TaxTimeTextField extends StatelessWidget {
  const TaxTimeTextField({Key? key, required this.text}) : super(key: key);
  final String? text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 20,
      child: TextField(
        keyboardType: TextInputType.number,
        style: const TextStyle(
            fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.black),
        decoration: InputDecoration(
          hintText: text,
        ),
      ),
    );
  }
}

class CapitalTextField extends StatelessWidget {
  const CapitalTextField({
    Key? key,
    this.controller,
  }) : super(key: key);
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 20,
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.number,
        style: const TextStyle(
            fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.black),
        decoration: const InputDecoration(
          hintText: '1000,00',
        ),
      ),
    );
  }
}

class LeftTitle extends StatelessWidget {
  const LeftTitle({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 15.0, fontWeight: FontWeight.w600, color: Colors.grey),
    );
  }
}

class ResolutionTag extends StatelessWidget {
  const ResolutionTag({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: const TextStyle(
            fontSize: 17.0, fontWeight: FontWeight.bold, color: Colors.blue));
  }
}

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(('Tapped'));
      },
      child: Container(
        height: 30,
        width: 120,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.blue.shade200,
              Colors.blue.shade300,
              Colors.blue.shade400,
            ]),
            borderRadius: BorderRadius.circular(5.0)),
        child: const Center(
          child: Text(
            'Calcular',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

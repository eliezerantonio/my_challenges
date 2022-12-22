import 'package:flutter/material.dart';

import 'calc_button.dart';
import 'capital_textField.dart';
import 'left_title.dart';
import 'resolution_tag.dart';
import 'tax_time_textField.dart';

class CenterCard extends StatelessWidget {
  const CenterCard({
    Key? key,
    required GlobalKey<ScaffoldState> scaffoldKey,
    required this.capitalController,
    required this.taxController,
    required this.timeController,
  })  : _scaffoldKey = scaffoldKey,
        super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey;
  final TextEditingController capitalController;
  final TextEditingController taxController;
  final TextEditingController timeController;

  @override
  Widget build(BuildContext context) {
    return Container(
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
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.menu, color: Colors.black),
                  onPressed: () {
                    _scaffoldKey.currentState!.openDrawer();
                  },
                ),
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
                            fontSize: 10.0, fontWeight: FontWeight.bold)),
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
                  children: [
                    const LeftTitle(text: 'Capital Inicial (c):'),
                    CapitalTextField(controller: capitalController),
                  ],
                ),
                const Divider(),
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const LeftTitle(text: 'Taxa de Juros % (i):'),
                    const SizedBox(width: 1),
                    TaxTimeTextField(text: '5%', controller: taxController),
                    const Text(
                      'Anual',
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Divider(),
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const LeftTitle(text: 'Tempo (n):'),
                    const SizedBox(width: 55),
                    TaxTimeTextField(text: '1', controller: timeController),
                    const Text(
                      'Anual',
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
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
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Divider(thickness: 2, indent: 5, endIndent: 5),
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
                Text(
                  'j: ${capitalController.text} * ${taxController.text} * ${timeController.text}',
                  style: const TextStyle(
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
                      'Valor Total Final (j+c):',
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '1.040,00 AOA',
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Divider(indent: 5, endIndent: 5),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

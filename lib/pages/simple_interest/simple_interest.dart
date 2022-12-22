import 'package:flutter/material.dart';
import 'package:mini_contabil_v2/widget/custom_drawer.dart';

import 'widgets/calc_button.dart';
import 'widgets/capital_textField.dart';
import 'widgets/left_title.dart';
import 'widgets/resolution_tag.dart';

class SimpleInterest extends StatefulWidget {
  const SimpleInterest({
    Key? key,
  }) : super(key: key);

  @override
  State<SimpleInterest> createState() => _SimpleInterestState();
}

class _SimpleInterestState extends State<SimpleInterest> {
  //Global Variables
  final _scaffoldKey = GlobalKey<ScaffoldState>(); //? To Controll Drawer
  TextEditingController timeController = TextEditingController();
  TextEditingController capitalController = TextEditingController();
  TextEditingController taxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const CustomDrawer(),
      body: SafeArea(
        child: Align(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Column(
              children: [
                CenterCard(
                  scaffoldKey: _scaffoldKey,
                  capitalController: capitalController,
                  taxController: taxController,
                  timeController: timeController,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CenterCard extends StatefulWidget {
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
  State<CenterCard> createState() => _CenterCardState();
}

class _CenterCardState extends State<CenterCard> {
  // Initial Selected Value
  String initialValue = 'Anual';
  // List of items in dropdown menu
  final _periods = [
    'Anual',
    'Mensal',
  ];

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
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.menu, color: Colors.black),
                  onPressed: () {
                    widget._scaffoldKey.currentState!.openDrawer();
                  },
                ),
                const Text('Regime de Juros Simples',
                    style: TextStyle(
                        fontSize: 17.0,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(height: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ResolutionTag(text: 'Dados'),
                const SizedBox(height: 15.0),
                const LeftTitle(text: 'Capital Inicial (c):'),
                const SizedBox(height: 20.0),
                CapitalTextField(controller: widget.capitalController),
                const Divider(),
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const LeftTitle(text: 'Taxa de Juros % (i):'),
                        const SizedBox(height: 20.0),
                        CapitalTextField(controller: widget.timeController),
                        SizedBox(
                          width: 85,
                          height: 40,
                          child: DropdownButton(
                            value: initialValue,
                            items: _periods.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(
                                  items,
                                  style: const TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                initialValue = newValue!;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const LeftTitle(text: 'Tempo (n):'),
                        const SizedBox(height: 20.0),
                        CapitalTextField(controller: widget.timeController),
                        SizedBox(
                          width: 85,
                          height: 40,
                          child: DropdownButton(
                            value: initialValue,
                            items: _periods.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(
                                  items,
                                  style: const TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                initialValue = newValue!;
                              });
                            },
                          ),
                        )
                      ],
                    ),
                  ],
                ),
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
                const SizedBox(height: 10),
                const Center(child: CalculateButton()),
                const SizedBox(height: 10),
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
                  'j: ${widget.capitalController.text} * ${widget.taxController.text} * ${widget.timeController.text}',
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

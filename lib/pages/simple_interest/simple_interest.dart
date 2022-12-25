import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:mini_contabil_v2/pages/simple_interest/widgets/resolution_info.dart';
import 'package:mini_contabil_v2/pages/widgets/interests_text_field.dart';
import 'package:mini_contabil_v2/pages/widgets/tax_term_text_field.dart';

import '../../utils/format_number_currency.dart';
import '../drawer_widget/custom_drawer.dart';
import '../widgets/calc_button.dart';
import 'widgets/left_title.dart';
import 'widgets/resolution_tag.dart';

class CalcSimpleInterestPage extends StatefulWidget {
  const CalcSimpleInterestPage({
    Key? key,
  }) : super(key: key);

  @override
  State<CalcSimpleInterestPage> createState() => _CalcSimpleInterestPageState();
}

class _CalcSimpleInterestPageState extends State<CalcSimpleInterestPage> {
  //Global Variables
  final _scaffoldKey = GlobalKey<ScaffoldState>(); //? To Controll Drawer
  final TextEditingController timeController = TextEditingController();
  final TextEditingController capitalController = TextEditingController();
  final TextEditingController taxController = TextEditingController();

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
  })  : _scaffoldKey = scaffoldKey,
        super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  State<CenterCard> createState() => _CenterCardState();
}

class _CenterCardState extends State<CenterCard> {
  // Initial Selected Value
  String initialRate = 'Anual';
  String initialTerm = 'Anual';
  // List of items in dropdown menu
  final _periods = [
    'Anual',
    'Mensal',
  ];
  final TextEditingController capitalController = TextEditingController();
  final TextEditingController rateController = TextEditingController();
  final TextEditingController termController = TextEditingController();
  final FormatDoubleToCurrency amountToConvert = FormatDoubleToCurrency();
  double convertedRate = 0;
  double totalOfInvestment = 0;
  double rateToConvert = 0;
  double principalAcomulated = 0;

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
                BounceInLeft(
                  child: IconButton(
                    icon: const Icon(Icons.menu, color: Colors.black),
                    onPressed: () {
                      widget._scaffoldKey.currentState!.openDrawer();
                    },
                  ),
                ),
                BounceInRight(
                  child: const Text('Juros Simples e Composto',
                      style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.blue,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BounceInLeft(child: const ResolutionTag(text: 'Dados')),
                    const SizedBox(height: 15.0),
                    const LeftTitle(text: 'Capital Inicial (c):'),
                    const SizedBox(height: 20.0),
                    SimpleInterestTextField(
                        controller: capitalController, hintText: '1,000.00'),
                  ],
                ),
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
                        SizedBox(
                          width: 85,
                          child: TaxAndTermTextField(
                              controller: rateController,
                              hintText: '5',
                              suffixText: ' %'),
                        ),
                        SizedBox(
                          width: 85,
                          height: 40,
                          child: DropdownButton(
                            value: initialRate,
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
                                initialRate = newValue!;
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
                        SizedBox(
                          width: 85,
                          child: TaxAndTermTextField(
                              controller: termController,
                              hintText: '2',
                              suffixText: ' '),
                        ),
                        SizedBox(
                          width: 85,
                          height: 40,
                          child: DropdownButton(
                            value: initialTerm,
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
                                initialTerm = newValue!;
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
                  children: [
                    const LeftTitle(text: 'Juro Calculado (j):'),
                    Text(
                      amountToConvert.convertDouble(convertedRate).toString(),
                      style: const TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Divider(thickness: 2, indent: 5, endIndent: 5),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          double principal =
                              double.parse(capitalController.text);
                          double rate = double.parse(rateController.text);
                          double term = double.parse(termController.text);

                          if (initialRate == 'Mensal' &&
                              initialTerm == 'Mensal') {
                            rateToConvert = rate / 100;
                            convertedRate = principal * rateToConvert * term;

                            totalOfInvestment = principal + convertedRate;
                          } else if (initialRate != 'Mensal' &&
                              initialTerm == 'Mensal') {
                            rateToConvert = rate / 100;
                            convertedRate =
                                (principal * rateToConvert * term) / 12;
                            totalOfInvestment = principal + convertedRate;
                          } else if (initialRate == 'Mensal' &&
                              initialTerm != 'Mensal') {
                            rateToConvert = rate / 100;
                            convertedRate =
                                principal * rateToConvert * term * 12;
                            totalOfInvestment = principal + convertedRate;
                          } else {
                            rateToConvert = rate / 100;
                            convertedRate = principal * rateToConvert * term;
                            totalOfInvestment = principal + convertedRate;
                          }
                        });
                      },
                      child: BounceInLeft(
                        child: CalculateButton(
                          text: 'Calcular',
                          colors: [
                            Colors.blue.shade300,
                            Colors.blue.shade400,
                            Colors.blue.shade500,
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          //Restore Controller To Default
                          capitalController.text = '0';
                          rateController.text = '0';
                          termController.text = '0';
                          //Restore Default Values
                          convertedRate = 0.00;
                          rateToConvert = 0;
                          totalOfInvestment = 0.00;
                        });
                      },
                      child: BounceInRight(
                        child: CalculateButton(
                          text: 'Limpar',
                          colors: [
                            Colors.red.shade300,
                            Colors.red.shade400,
                            Colors.red.shade500,
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BounceInLeft(child: const ResolutionTag(text: 'Resolução')),
                const SizedBox(height: 15.0),
                const ResolutionInfo(info: 'Formula:', data: 'c * i * n'),
                const Divider(),
                const SizedBox(height: 15.0),
                ResolutionInfo(
                    info: 'j:',
                    data: capitalController.text.isEmpty ||
                            rateController.text.isEmpty ||
                            termController.text.isEmpty
                        ? 'Capital Inicial * Taxa * Tempo'
                        : '${amountToConvert.convertDouble(double.parse(capitalController.text))} * ${rateController.text} * ${termController.text}'),
                const Divider(),
                const SizedBox(height: 15.0),
                ResolutionInfo(
                    info: 'j:',
                    data:
                        '${capitalController.text} * $rateToConvert * ${termController.text}'),
                const Divider(),
                const SizedBox(height: 15.0),
                ResolutionInfo(
                    info: 'j:',
                    data: amountToConvert.convertDouble(convertedRate)),
                const Divider(),
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Capital Acumulado (j+c):',
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '${amountToConvert.convertDouble(totalOfInvestment)}  AOA',
                      style: const TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

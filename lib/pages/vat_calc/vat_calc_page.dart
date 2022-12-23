import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:mini_contabil_v2/pages/simple_interest/widgets/resolution_info.dart';

import '../../utils/format_number_currency.dart';
import '../drawer_widget/custom_drawer.dart';
import '../simple_interest/widgets/left_title.dart';
import '../simple_interest/widgets/resolution_tag.dart';
import '../widgets/calc_button.dart';
import '../widgets/general_text_field.dart';

class CalcVatPage extends StatefulWidget {
  const CalcVatPage({
    Key? key,
  }) : super(key: key);

  @override
  State<CalcVatPage> createState() => _CalcVatPageState();
}

final FormatDoubleToCurrency amountToConvert = FormatDoubleToCurrency();

class _CalcVatPageState extends State<CalcVatPage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>(); //? To Controll Drawer

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
  final TextEditingController amountController = TextEditingController();
  double vatRate = 14;
  double vatResult = 0;
  double vatRateConverted = 0;
  double vatPlusAmount = 0;
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
                  child: const Text('Cálculadora de IVA',
                      style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.blue,
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
                    BounceInLeft(
                        child: const ResolutionTag(
                            text: 'Imposto Sobre o Valor Acrescentado')),
                    const SizedBox(height: 15.0),
                    const LeftTitle(text: 'Valor:'),
                    const SizedBox(height: 20.0),
                    GeneralTextField(
                        controller: amountController, hintText: '1,000.00'),
                  ],
                ),
                const Divider(),
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const LeftTitle(text: 'IVA:'),
                    Text(
                      amountToConvert.convertDouble(vatResult),
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
                          double amount = double.parse(amountController.text);
                          vatRateConverted = vatRate / 100;
                          vatResult = amount * vatRateConverted;
                          vatPlusAmount = amount + vatResult;
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
                          amountController.text = '0';
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
                const ResolutionInfo(info: 'Formula:', data: 'Valor * 14%'),
                const Divider(),
                const SizedBox(height: 15.0),
                ResolutionInfo(
                    info: 'IVA:',
                    data:
                        '${amountToConvert.convertDouble(double.parse(amountController.text))} * $vatRateConverted '),
                const Divider(),
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Total a Receber/Pagar:',
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '${amountToConvert.convertDouble(vatPlusAmount)}  AOA',
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

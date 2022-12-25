import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:mini_contabil_v2/pages/calc_labour_income/tax_income_calculator.dart';
import 'package:mini_contabil_v2/pages/nib_validator/widgets/nib_text_field.dart';

import '../../utils/format_number_currency.dart';
import '../drawer_widget/custom_drawer.dart';
import '../simple_interest/widgets/left_title.dart';
import '../simple_interest/widgets/resolution_tag.dart';
import '../widgets/calc_button.dart';
import 'utils/ao_nib_validator.dart';
import 'widgets/query_result_text.dart';

class CalcNibPage extends StatefulWidget {
  const CalcNibPage({
    Key? key,
  }) : super(key: key);

  @override
  State<CalcNibPage> createState() => _CalcNibPageState();
}

final FormatDoubleToCurrency amountToConvert = FormatDoubleToCurrency();

class _CalcNibPageState extends State<CalcNibPage> {
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
  final TextEditingController ibanController = TextEditingController();
  TaxIncomeCalculator taxIncomeCalculator = TaxIncomeCalculator();
  ValidateBankDetails validateBankDetails = ValidateBankDetails();

  String bankAcronym = 'SEM DADOS';
  String bankName = 'SEM DADOS';
  String bankSwift = 'SEM DADOS';
  String acronymErrorMessage = 'IBAN INVÁLIDO.';
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
                  child: const Text('Validador de IBAN',
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
                            text:
                                'Insira um IBAN, e Descubra Os Detalhes Banco.')),
                    const SizedBox(height: 15.0),
                    const LeftTitle(text: 'IBAN:'),
                    const SizedBox(height: 20.0),
                    NibTextField(controller: ibanController),
                  ],
                ),
                const Divider(),
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const LeftTitle(text: 'ACRONIMO:'),
                    QueryResultText(text: bankAcronym),
                  ],
                ),
                const SizedBox(height: 5.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const LeftTitle(text: 'NOME:'),
                    QueryResultText(text: bankName),
                  ],
                ),
                const SizedBox(height: 5.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const LeftTitle(text: 'SWIFT:'),
                    QueryResultText(text: bankSwift),
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
                          String ibanTyped = ibanController.text.toString();

                          bankAcronym = validateBankDetails
                              .validateBankAcronym(ibanTyped);
                          bankSwift =
                              validateBankDetails.validateSwift(bankAcronym);
                          bankName =
                              validateBankDetails.validateBankName(bankAcronym);
                          if (bankName.isEmpty ||
                              bankAcronym.isEmpty ||
                              bankSwift.isEmpty ||
                              ibanTyped.isEmpty ||
                              ibanTyped.length < 25) {
                            bankAcronym = acronymErrorMessage;
                            bankName = bankName;
                            bankSwift = bankSwift;
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
                          ibanController.text = '0';
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
          ],
        ),
      ),
    );
  }
}

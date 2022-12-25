import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:mini_contabil_v2/pages/widgets/custom_dialog.dart';
import 'package:mini_contabil_v2/utils/consts.dart';

import 'custom_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Drawer(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  drawerHeader(),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, homePage);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10.0),
                      child: FadeInUp(
                        child: homeRouteAndTitle(),
                      ),
                    ),
                  ),
                  const Divider(height: 0.1, indent: 5, endIndent: 5),
                  buildTileTag('JUROS SIMPLES'),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.pushReplacementNamed(
                              context, calcSimpleInterest),
                          child: const CustomListTile(
                            text: 'Juros Simples',
                            icon: Icon(Icons.account_balance_wallet_outlined,
                                color: Colors.blue),
                          ),
                        ),
                        const SizedBox(height: 15.0),
                        GestureDetector(
                          onTap: () => Navigator.pushReplacementNamed(
                              context, calcSimpleInterest),
                          child: const CustomListTile(
                            text: 'Juros Pro Rata',
                            icon: Icon(Icons.account_balance_wallet_rounded,
                                color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(height: 0.1, indent: 5, endIndent: 5),
                  buildTileTag('JUROS COMPOSTO'),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.pushReplacementNamed(
                              context, calcSimpleInterest),
                          child: const CustomListTile(
                            text: 'Juros Composto',
                            icon: Icon(Icons.account_balance_wallet_outlined,
                                color: Colors.blue),
                          ),
                        ),
                        const SizedBox(height: 15.0),
                        GestureDetector(
                          onTap: () => Navigator.pushReplacementNamed(
                              context, calcSimpleInterest),
                          child: const CustomListTile(
                            text: 'Juros Pro Rata',
                            icon: Icon(Icons.account_balance_wallet_rounded,
                                color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(height: 0.1, indent: 5, endIndent: 5),
                  buildTileTag('OUTRAS CALCULADORAS'),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.pushReplacementNamed(
                              context, calcVatPage),
                          child: const CustomListTile(
                            text: 'IVA',
                            icon: Icon(Icons.calculate, color: Colors.blue),
                          ),
                        ),
                        const SizedBox(height: 15.0),
                        GestureDetector(
                          onTap: () => Navigator.pushReplacementNamed(
                              context, calcInssPage),
                          child: const CustomListTile(
                            text: 'IRT E INSS',
                            icon: Icon(Icons.calculate, color: Colors.blue),
                          ),
                        ),
                        const SizedBox(height: 15.0),
                        GestureDetector(
                          onTap: () => Navigator.pushReplacementNamed(
                              context, calcNibPage),
                          child: const CustomListTile(
                            text: 'VERIFICADOR DE IBAN',
                            icon:
                                Icon(Icons.account_balance, color: Colors.blue),
                          ),
                        ),
                        const Divider(height: 0.1, indent: 5, endIndent: 5),
                      ],
                    ),
                  ),
                  buildTileTag('MAIS OPÇÕES'),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.pushReplacementNamed(
                              context, calcSimpleInterest),
                          child: const CustomListTile(
                            text: 'Português',
                            icon: Icon(Icons.language, color: Colors.orange),
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        GestureDetector(
                          onTap: () {},
                          child: const CustomListTile(
                            text: 'Light Mode',
                            icon: Icon(Icons.light_mode, color: Colors.orange),
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        GestureDetector(
                          onTap: () => showDialog(
                              context: context,
                              builder: (context) {
                                return const CustomDialogBox();
                              }),
                          child: const CustomListTile(
                            text: 'Sobre',
                            icon: Icon(Icons.info, color: Colors.orange),
                          ),
                        ),
                      ],
                    ),
                  ),
                  versionInformation()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container drawerHeader() {
    return Container(
      height: 40,
      width: double.infinity,
      color: Colors.blue,
      child: Center(
        child: BounceInUp(
          child: const Text(
            'Mini - Contabil',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Row homeRouteAndTitle() {
    return Row(
      children: const [
        Icon(
          Icons.cabin_rounded,
          color: Colors.blue,
        ),
        SizedBox(width: 10.0),
        Text(
          'Inicio',
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontFamily: 'Poppins',
            color: Colors.black54,
          ),
        ),
      ],
    );
  }

  Center versionInformation() {
    return const Center(
      child: Text('version: 2.0',
          style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w200)),
    );
  }

  ListTile buildTileTag(String text) {
    return ListTile(
        textColor: Colors.blue,
        title: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 13.0,
            fontFamily: 'Poppins',
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:mini_contabil_v2/pages/widgets/custom_dialog.dart';
import 'package:mini_contabil_v2/providers/theme_provider.dart';
import 'package:mini_contabil_v2/utils/consts.dart';
import 'package:provider/provider.dart';

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
                  Container(
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
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, homePage);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10.0),
                      child: FadeInUp(
                        child: Row(
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
                        ),
                      ),
                    ),
                  ),
                  const Divider(height: 0.1, indent: 5, endIndent: 5),
                  const ListTile(
                      textColor: Colors.blue,
                      title: Text(
                        'JUROS SIMPLES',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13.0,
                          fontFamily: 'Poppins',
                        ),
                      )),
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
                        const SizedBox(height: 10.0),
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
                  ListTile(
                      onTap: () {},
                      textColor: Colors.blue,
                      title: const Text(
                        'JUROS COMPOSTO',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13.0,
                          fontFamily: 'Poppins',
                        ),
                      )),
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
                        const SizedBox(height: 10.0),
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
                  ListTile(
                      onTap: () {},
                      textColor: Colors.blue,
                      title: const Text(
                        'OUTRAS CALCULADORAS',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13.0,
                          fontFamily: 'Poppins',
                        ),
                      )),
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
                        const SizedBox(height: 10.0),
                        GestureDetector(
                          onTap: () => Navigator.pushReplacementNamed(
                              context, calcInssPage),
                          child: const CustomListTile(
                            text: 'IRT E INSS',
                            icon: Icon(Icons.calculate, color: Colors.blue),
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        GestureDetector(
                          onTap: () => Navigator.pushReplacementNamed(
                              context, calcSimpleInterest),
                          child: const CustomListTile(
                            text: 'IBAN',
                            icon:
                                Icon(Icons.account_balance, color: Colors.blue),
                          ),
                        ),
                        const Divider(height: 0.1, indent: 5, endIndent: 5),
                      ],
                    ),
                  ),
                  const ListTile(
                      textColor: Colors.blue,
                      title: Text(
                        'MAIS OPÇÕES',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13.0,
                          fontFamily: 'Poppins',
                        ),
                      )),
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
                        const SizedBox(height: 5.0),
                        Consumer<ThemeProvider>(
                          builder: (context, provider, child) {
                            return GestureDetector(
                              onTap: () {
                                provider.changeTheme('light');
                              },
                              child: const CustomListTile(
                                text: 'Light Mode',
                                icon: Icon(Icons.light_mode,
                                    color: Colors.orange),
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 5.0),
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
                  const Center(
                    child: Text('version: 2.0'),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

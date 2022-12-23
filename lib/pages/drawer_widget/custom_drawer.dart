import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:mini_contabil_v2/utils/consts.dart';

import 'custom_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 30.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
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
                  child: const Center(
                    child: Text(
                      'Mini - Contabil',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
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
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Divider(height: 0.1, indent: 5, endIndent: 5),
                ListTile(
                    onTap: () {},
                    textColor: Colors.blue,
                    title: const Text(
                      'JUROS SIMPLES',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 13.0),
                    )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    children: [
                      CustomListTile(
                        text: 'Juros Simples',
                        icon: const Icon(Icons.account_balance_wallet_outlined,
                            color: Colors.blue),
                        onTap: () => Navigator.pushReplacementNamed(
                            context, calcSimpleInterest),
                      ),
                      const SizedBox(height: 10.0),
                      CustomListTile(
                        text: 'Juros Prota',
                        icon: const Icon(Icons.account_balance_wallet_rounded,
                            color: Colors.blue),
                        onTap: () => Navigator.pushReplacementNamed(
                            context, calcSimpleInterest),
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
                          fontWeight: FontWeight.bold, fontSize: 13.0),
                    )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    children: [
                      CustomListTile(
                        text: 'Juros Composto',
                        icon: const Icon(Icons.account_balance_wallet_outlined,
                            color: Colors.blue),
                        onTap: () => Navigator.pushReplacementNamed(
                            context, calcSimpleInterest),
                      ),
                      const SizedBox(height: 10.0),
                      CustomListTile(
                        text: 'Juros Pro Rata',
                        icon: const Icon(Icons.account_balance_wallet_rounded,
                            color: Colors.blue),
                        onTap: () => Navigator.pushReplacementNamed(
                            context, calcSimpleInterest),
                      ),
                    ],
                  ),
                ),
                ListTile(
                    onTap: () {},
                    textColor: Colors.blue,
                    title: const Text(
                      'OUTRAS',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 13.0),
                    )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    children: [
                      CustomListTile(
                        text: 'IRT',
                        icon: const Icon(Icons.calculate, color: Colors.blue),
                        onTap: () => Navigator.pushReplacementNamed(
                            context, calcSimpleInterest),
                      ),
                      const SizedBox(height: 10.0),
                      CustomListTile(
                        text: 'INSS',
                        icon: const Icon(Icons.calculate, color: Colors.blue),
                        onTap: () => Navigator.pushReplacementNamed(
                            context, calcSimpleInterest),
                      ),
                      const SizedBox(height: 10.0),
                      CustomListTile(
                        text: 'IBAN',
                        icon: const Icon(Icons.account_balance,
                            color: Colors.blue),
                        onTap: () => Navigator.pushReplacementNamed(
                            context, calcSimpleInterest),
                      ),
                      const SizedBox(height: 20.0),
                      CustomListTile(
                        text: 'Sobre',
                        icon: const Icon(Icons.info, color: Colors.orange),
                        onTap: () => Navigator.pushReplacementNamed(
                            context, calcSimpleInterest),
                      ),
                      const SizedBox(height: 10.0),
                      const Center(
                        child: Text('version: 2.0'),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

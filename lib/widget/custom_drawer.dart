import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:mini_contabil_v2/consts.dart';

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
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, calcSimpleInterest);
                        },
                        child: FadeInUp(
                          child: Row(
                            children: const [
                              Icon(Icons.account_balance_wallet_outlined,
                                  color: Colors.blue),
                              SizedBox(width: 10.0),
                              Text(
                                'Juros Simples',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, calcSimpleInterest);
                        },
                        child: FadeInUp(
                          child: Row(
                            children: const [
                              Icon(Icons.account_balance_wallet_rounded,
                                  color: Colors.blue),
                              SizedBox(width: 10.0),
                              Text(
                                'Juros Pro Rata',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
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
                          fontWeight: FontWeight.bold, fontSize: 13.0),
                    )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, calcSimpleInterest);
                        },
                        child: FadeInUp(
                          child: Row(
                            children: const [
                              Icon(Icons.account_balance_wallet_outlined,
                                  color: Colors.blue),
                              SizedBox(width: 10.0),
                              Text(
                                'Juros Composto',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, calcSimpleInterest);
                        },
                        child: FadeInUp(
                          child: Row(
                            children: const [
                              Icon(Icons.account_balance_wallet_rounded,
                                  color: Colors.blue),
                              SizedBox(width: 10.0),
                              Text(
                                'Juros Pro Rata',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        ),
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
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, calcSimpleInterest);
                        },
                        child: FadeInUp(
                          child: Row(
                            children: const [
                              Icon(Icons.calculate, color: Colors.blue),
                              SizedBox(width: 10.0),
                              Text(
                                'IRT',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, calcSimpleInterest);
                        },
                        child: FadeInUp(
                          child: Row(
                            children: const [
                              Icon(Icons.calculate, color: Colors.blue),
                              SizedBox(width: 10.0),
                              Text(
                                'INSS',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, calcSimpleInterest);
                        },
                        child: FadeInUp(
                          child: Row(
                            children: const [
                              Icon(Icons.account_balance, color: Colors.blue),
                              SizedBox(width: 10.0),
                              Text(
                                'VALIDADOR DE IBAN',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, calcSimpleInterest);
                        },
                        child: FadeInUp(
                          child: Row(
                            children: const [
                              Icon(Icons.info, color: Colors.blue),
                              SizedBox(width: 10.0),
                              Text(
                                'SOBRE',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        ),
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

import 'package:flutter/material.dart';
import 'package:mini_contabil_v2/consts.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 30.0),
      child: Drawer(
        elevation: 10.0,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150,
                width: double.infinity,
                color: Colors.red,
              ),
              ListTile(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, homeRoute);
                  },
                  leading: const Icon(Icons.home_filled),
                  textColor: Colors.black,
                  title: const Text(
                    'INÍCIO',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
              const Divider(height: 0.1, indent: 5, endIndent: 5),
              ListTile(
                  onTap: () {},
                  textColor: Colors.blue,
                  title: const Text(
                    'CALCULADORAS DE JUROS SIMPLES',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 13.0),
                  )),
              ListTile(
                leading: const Icon(Icons.person),
                hoverColor: Colors.grey,
                title: const Text('Cálculo de Juros Simples'),
                onTap: () {
                  Navigator.pushReplacementNamed(context, calcSimpleInterest);
                },
              ),
              ListTile(
                leading: const Icon(Icons.person),
                hoverColor: Colors.grey,
                title: const Text('Cálculo de Taxa'),
                onTap: () {
                  Navigator.pushReplacementNamed(context, calcRate);
                },
              ),
              ListTile(
                leading: const Icon(Icons.person),
                hoverColor: Colors.grey,
                title: const Text('Cálculo de Tempo'),
                onTap: () {
                  Navigator.pushReplacementNamed(context, calcTerm);
                },
              ),
              ListTile(
                leading: const Icon(Icons.person),
                hoverColor: Colors.grey,
                title: const Text('Cálculo do Capital Acumulado'),
                onTap: () {
                  Navigator.pushReplacementNamed(context, calcPrincipal);
                },
              ),
              const Divider(height: 0.1, indent: 5, endIndent: 5),
              Column(
                children: [
                  ListTile(
                      onTap: () {},
                      textColor: Colors.blue,
                      title: const Text(
                        'CALCULADORAS DE JUROS COMPOSTOS',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 13.0),
                      )),
                  ListTile(
                    leading: const Icon(Icons.person),
                    hoverColor: Colors.grey,
                    title: const Text('Cálculo de Juros Composto'),
                    onTap: () {
                      Navigator.pushReplacementNamed(
                          context, calcSimpleInterest);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.person),
                    hoverColor: Colors.grey,
                    title: const Text('Cálculo de Juro Total'),
                    onTap: () {
                      Navigator.pushReplacementNamed(context, calcRate);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.person),
                    hoverColor: Colors.grey,
                    title: const Text('Cálculo Juros'),
                    onTap: () {
                      Navigator.pushReplacementNamed(context, calcTerm);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.person),
                    hoverColor: Colors.grey,
                    title: const Text('Cálculo de Taxa'),
                    onTap: () {
                      Navigator.pushReplacementNamed(context, calcPrincipal);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

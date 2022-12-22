import 'package:flutter/material.dart';
import 'package:mini_contabil_v2/consts.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 10.0,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
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
                leading: const Icon(Icons.person),
                textColor: Colors.black,
                title: const Text(
                  'JUROS SIMPLES',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            ListTile(
              onTap: () {
                Navigator.pushReplacementNamed(context, simpleInterest);
              },
              leading: const Icon(Icons.person),
              hoverColor: Colors.grey,
              title: const Text('Calcular Juros'),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.person),
              hoverColor: Colors.grey,
              title: const Text('Calcular Taxa'),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.person),
              hoverColor: Colors.grey,
              title: const Text('Calcular Tempo'),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.person),
              hoverColor: Colors.grey,
              title: const Text('Calcular Capital'),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.person),
              hoverColor: Colors.grey,
              title: const Text('Calcular Montante Acumulado'),
            ),
            const Divider(height: 0.1, indent: 5, endIndent: 5),
            ListTile(
                onTap: () {},
                leading: const Icon(Icons.person),
                textColor: Colors.black,
                title: const Text(
                  'JUROS COMPOSTO',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.person),
              hoverColor: Colors.grey,
              title: const Text('Calcular Juro'),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.person),
              hoverColor: Colors.grey,
              title: const Text('Calcular Juro Total'),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.person),
              hoverColor: Colors.grey,
              title: const Text('Calcular Tempo'),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.person),
              hoverColor: Colors.grey,
              title: const Text('Calcular Montante Acumulado'),
            ),
          ],
        ),
      ),
    );
  }
}

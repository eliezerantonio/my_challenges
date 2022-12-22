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
                onTap: () {},
                leading: const Icon(Icons.person),
                textColor: Colors.black,
                title: const Text(
                  'JUROS SIMPLES',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            const Divider(),
            ListTile(
              onTap: () {
                Navigator.pushReplacementNamed(context, homeRoute);
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
            ListTile(
                onTap: () {},
                leading: const Icon(Icons.person),
                textColor: Colors.black,
                title: const Text('Juros Composto')),
            const Divider(),
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
              title: const Text('Calcular Montante Acumulado'),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.person),
              hoverColor: Colors.grey,
              title: const Text('Calcular Tempo'),
            ),
          ],
        ),
      ),
    );
  }
}

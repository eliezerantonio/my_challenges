import 'package:flutter/material.dart';

import '../../utils/consts.dart';

class CustomDialogBox extends StatefulWidget {
  const CustomDialogBox({
    Key? key,
  }) : super(key: key);

  @override
  _CustomDialogBoxState createState() => _CustomDialogBoxState();
}

class _CustomDialogBoxState extends State<CustomDialogBox> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0,
      backgroundColor: const Color.fromARGB(0, 255, 44, 44),
      child: contentBox(context),
    );
  }

  contentBox(context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(
              left: 10, top: avatarRadius + dialogPadding, right: 10),
          margin: const EdgeInsets.only(top: avatarRadius),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.circular(dialogPadding),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    offset: const Offset(0, 10),
                    blurRadius: 10),
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Text(
                'MINI-CONTÁBIL',
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'Poppins',
                  color: Colors.blue,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Este aplicativo foi criado por Adilson Tchameia, para fins educaionais sem propósito financeiro.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Inter',
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Criado Por: Adilson Tchameia',
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                'Email: adilsonkchameia@outlook.com',
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                'Revisão: Fernando Franklin Cavalo (Contabilista/Auditor)',
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      'Sair',
                      style: TextStyle(fontSize: 18),
                    )),
              ),
            ],
          ),
        ),
        const Positioned(
          left: dialogPadding,
          right: dialogPadding,
          child: SizedBox(
            height: 90.0,
            child: CircleAvatar(
              backgroundColor: Colors.red,
              radius: 90.0,
              backgroundImage: AssetImage('assets/background2.jpg'),
            ),
          ),
        ),
      ],
    );
  }
}

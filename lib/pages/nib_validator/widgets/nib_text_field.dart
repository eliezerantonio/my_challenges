import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';

class NibTextField extends StatefulWidget {
  const NibTextField({
    Key? key,
    required this.controller,
  }) : super(key: key);
  final TextEditingController? controller;

  @override
  State<NibTextField> createState() => _NibTextFieldState();
}

class _NibTextFieldState extends State<NibTextField> {
  String capitalText = '';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: TextField(
        maxLength: 27,
        cursorWidth: 1,
        inputFormatters: [MaskedInputFormatter('####.####.####.####.####.##')],
        //enableInteractiveSelection: false,
        onChanged: (value) => setState(() {
          capitalText = value;
        }),
        controller: widget.controller,
        keyboardType: TextInputType.number,
        style: const TextStyle(
            fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.black),
        decoration: const InputDecoration(
          helperText: 'Exe: 0066.0000.1234.4321.1234.12',
          hintText: 'Por Favor, Insira Um IBAN...',
          prefixText: 'AO06 ',
        ),
      ),
    );
  }
}

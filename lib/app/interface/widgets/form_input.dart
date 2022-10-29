import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputForm extends StatefulWidget {
  final IconData icon;
  final String labeltext;
  final String valorInicial;
  final bool ocultar;
  const InputForm({
    Key? key,
    required this.icon,
    required this.labeltext,
    required this.valorInicial,
    required this.ocultar,
  }) : super(key: key);

  @override
  State<InputForm> createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextFormField(
        initialValue: widget.valorInicial,
        style: const TextStyle(
          fontSize: 16,
        ),
        obscureText: widget.ocultar,
        decoration: InputDecoration(
          labelText: widget.labeltext,
          labelStyle: const TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w500,
            fontFamily: "Poppins",
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          prefixIcon: Icon(
            widget.icon,
            color: Colors.black,
            size: 26,
          ),
          fillColor: Colors.white,
        ),
      ),
    );
  }
}

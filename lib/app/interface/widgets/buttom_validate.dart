import 'package:flutter/material.dart';

class ButtomValidate extends StatelessWidget {
  final IconData icon;
  const ButtomValidate({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 77,
      height: 56,
      decoration: BoxDecoration(
        color: const Color(0xFF4A9777),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Icon(
        icon,
        size: 30,
        color: Color(0xFFFAFDFB),
      ),
    );
  }
}

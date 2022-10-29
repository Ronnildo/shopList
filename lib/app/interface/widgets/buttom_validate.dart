import 'package:flutter/material.dart';

class ButtomValidate extends StatelessWidget {
  final IconData icon;
  final void Function() ontap;
  const ButtomValidate({Key? key, required this.icon, required this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: 80,
        height: 76,
        decoration: BoxDecoration(
          color: const Color(0xFF158B49),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Icon(
          icon,
          size: 30,
          color: const Color(0xFFFAFDFB),
        ),
      ),
    );
  }
}

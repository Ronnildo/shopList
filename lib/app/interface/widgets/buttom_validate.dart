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
        width: 77,
        height: 56,
        decoration: BoxDecoration(
          color: const Color(0xFF4A9777),
          borderRadius: BorderRadius.circular(20),
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

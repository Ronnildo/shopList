import 'package:flutter/material.dart';

class ReuseCard extends StatelessWidget {
  final Widget widget;
  const ReuseCard({Key? key, required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 10.0),
      child: Container(
        alignment: Alignment.center,
        height: 120,
        decoration: BoxDecoration(
          color: const Color(0xFFFAFCFB),
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: const [
            BoxShadow(
              color: Colors.black54,
              offset: Offset(
                2.0,
                2.0,
              ),
              blurRadius: 5.0,
              spreadRadius: 0.3,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: widget,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ContainerColor extends StatefulWidget {
  final Widget widget;
  const ContainerColor({Key? key, required this.widget}) : super(key: key);

  @override
  State<ContainerColor> createState() => _ContainerColorState();
}

class _ContainerColorState extends State<ContainerColor> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xFF83EDC3),
            Color(0xFF216449),
          ],
        ),
      ),
      child: widget.widget,
    );
  }
}

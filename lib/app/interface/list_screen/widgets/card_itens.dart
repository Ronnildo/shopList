import 'package:flutter/material.dart';

class CardItens extends StatefulWidget {
  final Widget widget;
  final bool visible;
  const CardItens({
    Key? key,
    required this.widget,
    required this.visible,
  }) : super(key: key);

  @override
  State<CardItens> createState() => _CardItensState();
}

class _CardItensState extends State<CardItens> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Visibility(
        visible: widget.visible,
        child: Container(
          alignment: Alignment.topLeft,
          height: 120,
          width: MediaQuery.of(context).size.width,
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
            child: widget.widget,
          ),
        ),
      ),
    );
  }
}

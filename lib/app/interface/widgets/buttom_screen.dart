import 'package:flutter/material.dart';

class ButtomMain extends StatefulWidget {
  final void Function() funcao;
  final String text;
  const ButtomMain({
    Key? key,
    required this.funcao,
    required this.text,
  }) : super(key: key);

  @override
  State<ButtomMain> createState() => _ButtomMainState();
}

class _ButtomMainState extends State<ButtomMain> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.funcao,
      style: ElevatedButton.styleFrom(
        primary: Theme.of(context).colorScheme.onPrimary,
        padding: const EdgeInsets.only(
          top: 18,
          bottom: 17,
          left: 69,
          right: 68,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        shadowColor: Colors.greenAccent,
        elevation: 5,
      ),
      child: Text(
        widget.text.toUpperCase(),
        style: Theme.of(context).textTheme.button,
      ),
    );
  }
}

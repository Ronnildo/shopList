import 'package:flutter/material.dart';
//import 'package:flutter/src/foundation/key.dart';
//import 'package:flutter/src/widgets/framework.dart';

class ButtomDialog extends StatefulWidget {
  final String text;
  final void Function() onTap;
  const ButtomDialog({Key? key, required this.text, required this.onTap})
      : super(key: key);

  @override
  State<ButtomDialog> createState() => _ButtomDialogState();
}

class _ButtomDialogState extends State<ButtomDialog> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 3,
          horizontal: 10,
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onPrimary,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              offset: Offset(0, 1),
              blurRadius: 3,
            ),
          ],
        ),
        child: Text(
          widget.text,
          style: Theme.of(context).textTheme.button,
        ),
      ),
    );
  }
}
/**ElevatedButton(
      onPressed: widget.onTap,
      style: ElevatedButton.styleFrom(
        primary: Theme.of(context).colorScheme.onPrimary,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 5,
        ),
        textStyle: Theme.of(context).textTheme.button,
      ),
      child: Text(
        widget.text,
        style: Theme.of(context).textTheme.button,
      ),
    ); */
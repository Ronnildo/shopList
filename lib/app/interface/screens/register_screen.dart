import 'package:drop_shadow/drop_shadow.dart';
import 'package:flutter/material.dart';
import 'package:shoplist/app/interface/screens/main_screen.dart';
import 'package:shoplist/app/interface/widgets/card_reuse.dart';

class RegiterScreen extends StatefulWidget {
  const RegiterScreen({Key? key}) : super(key: key);

  @override
  State<RegiterScreen> createState() => _RegiterScreenState();
}

class _RegiterScreenState extends State<RegiterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF89CDB2),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 50),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [],
        ),
      ),
    );
  }
}

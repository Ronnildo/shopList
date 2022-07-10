import 'package:flutter/material.dart';
import 'package:drop_shadow/drop_shadow.dart';
import 'package:shoplist/app/interface/screens/home_screen.dart';
import 'package:shoplist/app/interface/screens/main_screen.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF4A9777),
        title: const Text(
          'Item List',
          style: TextStyle(
            color: Colors.black,
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}

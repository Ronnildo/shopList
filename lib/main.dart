import 'package:flutter/material.dart';
import 'package:shoplist/app/interface/screens/main_screen.dart';
import 'package:shoplist/app/interface/screens/list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Organizador de Compras',
      home: ListScreen(),
      // routes: {},
      theme: ThemeData(
        fontFamily: 'Concert One',
      ),
    );
  }
}

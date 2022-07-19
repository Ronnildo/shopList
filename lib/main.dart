import 'package:flutter/material.dart';
import 'package:shoplist/app/interface/screens/main_screen.dart';
import 'package:shoplist/app/interface/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Organizador de Compras',
      home: const InitialScreen(),
      // routes: {},
      theme: ThemeData(
        fontFamily: 'Concert One',
      ),
    );
  }
}

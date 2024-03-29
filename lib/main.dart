import 'package:flutter/material.dart';

import 'package:shoplist/app/core/theme_app.dart';
import 'package:shoplist/app/interface/home_screen/home_screen.dart';

import 'app/interface/splash_screen.dart';

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
      home: const HomeScreen(),
      // routes: {},
      theme: TemaApp.tema,
    );
  }
}

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
      backgroundColor: const Color(0xFF89CDB2),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                children: const <Widget>[
                  Icon(Icons.arrow_back),
                ],
              ),
              const Text(
                'Julho',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              const Text(
                '27 Jul 2022',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Text(
                    'Carnes e Frios',
                    style: TextStyle(fontSize: 15.0),
                  ),
                  Icon(Icons.expand_less),
                ],
              ),
              Container(

              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class ChecarCaixa extends StatefulWidget {
//   const ChecarCaixa({Key? key, required this.text}) : super(key: key);
//
//   final Text text;
//   final bool checado = false;
//
//   @override
//   State<ChecarCaixa> createState() => _ChecarCaixaState();
// }
//
// class _ChecarCaixaState extends State<ChecarCaixa> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: CheckboxListTile(
//         title: const Text(
//           'text',
//           style: TextStyle(fontSize: 15.0),
//         ),
//         controlAffinity: ListTileControlAffinity.leading,
//         onChanged: (bool? value) {
//           setState(() {
//             checado = value!;
//           });
//         }, value: null,
//       ),
//     );
//   }
// }


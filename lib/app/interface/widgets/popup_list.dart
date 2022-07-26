import 'package:flutter/material.dart';
import '../screens/list_screen.dart';
import '../screens/list_screen.dart';
import '../widgets/buttom_validate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PopUpInsertList extends StatefulWidget {
  const PopUpInsertList({Key? key}) : super(key: key);

  @override
  State<PopUpInsertList> createState() => _PopUpInsertListState();
}

class _PopUpInsertListState extends State<PopUpInsertList> {
  void voltar() {
    setState(() {
      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: AlertDialog(
          title: const Text('Criar Lista'),
          backgroundColor: Color(0xFFFAFDFB),
          alignment: Alignment.center,
          titleTextStyle: const TextStyle(
            color: Colors.black,
            fontSize: 36,
            fontFamily: 'Concert One',
          ),
          content: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const TextField(
                keyboardType: TextInputType.text,
                maxLength: 19,
                decoration: InputDecoration(
                  labelText: 'Nome do Item',
                  border: OutlineInputBorder(),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Text(
                    'Categoria do Item',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Icon(Icons.sort_by_alpha),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  width: 232,
                  height: 314,
                  child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: <Widget>[
                            ChecarCaixa(title: 'Macbook Air M1 202$index'),
                          ],
                        );
                      }),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  GestureDetector(
                    onTap: voltar,
                    child: const ButtomValidate(icon: FontAwesomeIcons.xmark),
                  ),
                  GestureDetector(
                    onTap: voltar,
                    child: const ButtomValidate(icon: FontAwesomeIcons.check),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

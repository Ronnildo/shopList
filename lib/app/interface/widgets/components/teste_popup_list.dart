import 'package:flutter/material.dart';
import '../../screens/list_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'buttom_validate.dart';
import '../../widgets/ui/drop_page.dart';

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

  List<String> listaDeProdutos = [
    "teste",
    "teste",
    "teste",
    "teste",
    "teste",
  ];

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
                children: <Widget>[
                  const Text(
                    'Carne',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  GestureDetector(
                    child: Icon(Icons.sort_by_alpha),
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(
                          builder: (context) => DropPage()));
                    }
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  width: 232,
                  height: 314,
                  child: ListView.builder(
                      itemCount: listaDeProdutos.length,
                      itemBuilder: (BuildContext context, index) {
                        return Column(
                          children: <Widget>[
                            ChecarCaixa(title: listaDeProdutos.elementAt(index)),
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

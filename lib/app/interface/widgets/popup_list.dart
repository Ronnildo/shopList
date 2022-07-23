import 'package:flutter/material.dart';
import 'package:shoplist/app/interface/screens/list_screen.dart';
import 'package:shoplist/app/interface/widgets/buttom_validate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PopUpInsertList extends StatefulWidget {
  const PopUpInsertList({Key? key}) : super(key: key);

  @override
  State<PopUpInsertList> createState() => _PopUpInsertListState();
}

class _PopUpInsertListState extends State<PopUpInsertList> {
  final TextEditingController _textEditingController = TextEditingController();

  void voltar() {
    setState(() {
      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Criar Lista'),
      backgroundColor: const Color(0xFFFAFDFB),
      alignment: Alignment.center,
      titleTextStyle: const TextStyle(
        color: Colors.black,
        fontSize: 36,
        fontFamily: 'Concert One',
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          TextField(
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              labelText: 'Mês',
              fillColor: Color(0xFFA6BAB2),
              focusColor: Color(0xFF44AA99),
            ),
            maxLength: 12,
            style: const TextStyle(
              color: Colors.green,
              fontSize: 20,
            ),
            controller: _textEditingController,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget> [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const <Widget> [
                    Text('Categoria do item'),
                    Icon(
                      Icons.sort_by_alpha,
                    ),
                  ],
                ),
                Column(
                  children: <Widget> [
                    ChecarCaixa(title: 'Macbook Air M1 2020'),
                    ChecarCaixa(title: 'Macbook Air M2 2022'),
                    ChecarCaixa(title: 'Macbook Air M2 2022'),
                    ChecarCaixa(title: 'Macbook Air M2 2022'),
                    ChecarCaixa(title: 'Macbook Air M2 2022'),
                    ChecarCaixa(title: 'Macbook Air M2 2022'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget> [
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
        ],
      ),
    );
  }
}

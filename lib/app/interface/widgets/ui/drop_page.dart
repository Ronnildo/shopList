import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/buttom_validate.dart';

class DropPage extends StatefulWidget {
  const DropPage({Key? key}) : super(key: key);

  @override
  State<DropPage> createState() => _DropPageState();
}

final dropValue = ValueNotifier('');
final dropOpcoes = [
  'Frios e Laticinio',
  'Carnes',
  'Peixaria',
  'Limpeza',
  'Higiene Pessoal',
  'Padaria',
  'Perecíveis'
];

class _DropPageState extends State<DropPage> {

  void voltar() {
    setState(() {
      Navigator.pop(context);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            SizedBox(
              width: 280,
              child: ValueListenableBuilder(
                  valueListenable: dropValue,
                  builder: (BuildContext, String value, _) {
                    return DropdownButtonFormField<String>(
                      isExpanded: true,
                      hint: const Text('Selecione uma categoria'),
                      decoration: InputDecoration(
                        label: const Text('Selecione uma categoria'),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      value: (value.isEmpty) ? null : value,
                      onChanged: (escolha) =>
                          dropValue.value = escolha.toString(),
                      items: dropOpcoes
                          .map(
                            (op) => DropdownMenuItem(
                              value: op,
                              child: Text(op),
                            ),
                          )
                          .toList(),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
            ),
          ],
        ),
      ),
    );
  }
}

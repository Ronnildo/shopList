import 'package:flutter/material.dart';
import 'package:shoplist/app/core/parametros.dart';
import 'package:shoplist/app/interface/widgets/components/buttom_validate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shoplist/app/repositorio/repositorio_lista.dart';

class PopUpInsertList extends StatefulWidget {
  final String id;
  const PopUpInsertList({Key? key, required this.id}) : super(key: key);

  @override
  State<PopUpInsertList> createState() => _PopUpInsertListState();
}

class _PopUpInsertListState extends State<PopUpInsertList> {
  final TextEditingController _textEditingController = TextEditingController();
  final RepositorioLista _repositorioLista = RepositorioLista();
  Parametros? p;

  void cancel() {
    setState(() {
      Navigator.pop(context);
    });
  }

  void limparCampo() {
    _textEditingController.text = "";
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
        children: [
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: cancel,
                child: const ButtomValidate(icon: FontAwesomeIcons.xmark),
              ),
              GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) => FutureBuilder(
                            future: _repositorioLista.add(
                              widget.id,
                              p = Parametros(
                                  dados: {"mes": _textEditingController.text}),
                            ),
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                return const AlertDialog(
                                    content: Text("Lista criada com sucesso!"));
                              }
                              return const AlertDialog(
                                content: Text("Criando Lista..."),
                              );
                            },
                          ));
                  limparCampo();
                },
                child: const ButtomValidate(icon: FontAwesomeIcons.check),
              ),
            ],
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shoplist/app/core/parametros.dart';
import 'package:shoplist/app/interface/widgets/buttom_validate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shoplist/app/models/listas_model.dart';
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
  String? _mes;
  Parametros? p;

  void cancel() {
    setState(() {
      Navigator.pop(context);
    });
  }

  Parametros data(String mes) {
    List meses = [
      "Janeiro",
      "Fevereiro",
      "Março",
      "Abril",
      "Maio",
      "Junho",
      "Julho",
      "Agosto",
      "Setembro",
      "Outubro",
      "Novembro",
      "Dezembro",
    ];
    var element = "";

    for (element in meses) {
      if (mes == element) {
        _mes = _textEditingController.text;
      }
    }

    Parametros p = Parametros(dados: {"mes": _mes});
    return p;
  }

  void limparCampo() {
    _textEditingController.text = "";
  }

  void setData(String mes) {
    setState(() {
      showDialog(
        context: context,
        builder: (context) => FutureBuilder(
          future: _repositorioLista.add(widget.id, data(mes)),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              ListaModel lista = snapshot.data! as ListaModel;
              return AlertDialog(
                content: Text("${lista.mes}"),
              );
            }
            return const AlertDialog(
              content: Text("Criando lista..."),
            );
          },
        ),
      );
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
        children: [
          TextField(
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              labelText: 'Mês',
              border: OutlineInputBorder(),
              fillColor: Color(0xFFA6BAB2),
              focusColor: Color(0xFF44AA99),
            ),
            maxLength: 12,
            style: const TextStyle(
              color: Colors.green,
              fontSize: 22,
            ),
            controller: _textEditingController,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ButtomValidate(
                icon: FontAwesomeIcons.xmark,
                ontap: cancel,
              ),
              ButtomValidate(
                icon: FontAwesomeIcons.check,
                ontap: () => setData(_textEditingController.text),
              ),
            ],
          )
        ],
      ),
    );
  }
}
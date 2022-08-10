// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shoplist/app/core/parametros.dart';
import 'package:shoplist/app/interface/widgets/buttom_validate.dart';
import 'package:shoplist/app/models/item_model.dart';
import 'package:shoplist/app/repositorio/repositorio_item.dart';

class PopUpInsertItem extends StatefulWidget {
  final int idList;
  const PopUpInsertItem({Key? key, required this.idList}) : super(key: key);

  @override
  State<PopUpInsertItem> createState() => _PopUpInsertItemState();
}

class _PopUpInsertItemState extends State<PopUpInsertItem> {
  final TextEditingController _textEditingController = TextEditingController();
  String? _itemSelecionado = 'Bebidas';
  final RepositorioDeItem _repositorioDeItem = RepositorioDeItem();
  final _categorias = [
    "Congelados e Frios",
    "Higiene pessoal",
    "Bebidas",
    "Padaria",
    "Produtos de limpeza",
    "Hortifruti",
    "Alimentos"
  ];

  void cancel() {
    setState(() {
      Navigator.pop(context);
    });
  }

  Parametros data(String nameItem, String category) {
    String item = nameItem.trimLeft();
    Parametros p = Parametros(dados: {
      "nameItem": item,
      "category": category,
    });
    return p;
  }

  void setData(String nameItem, String item) {
    setState(() {
      showDialog(
        context: context,
        builder: (context) => FutureBuilder(
            future: _repositorioDeItem.add(
                widget.idList.toString(), data(nameItem, item)),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                ItemModel item = snapshot.data! as ItemModel;
                if (item.nameItem == _textEditingController.text) {
                  return AlertDialog(
                    content: Text("Item ${item.nameItem} Adicionado"),
                  );
                } else {
                  return const AlertDialog(
                    content:
                        Text("Não adicionado, pois o nome do Item está vazio!"),
                  );
                }
              }
              return const AlertDialog(
                content: Text("Adicionando item..."),
              );
            }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Center(
        child: Text(
          "Adicionar Item",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: TextField(
              keyboardType: TextInputType.text,
              style: const TextStyle(
                fontSize: 22,
              ),
              textCapitalization: TextCapitalization.words,
              decoration: const InputDecoration(
                  labelText: "Nome do Item",
                  border: OutlineInputBorder(),
                  labelStyle: TextStyle(
                    fontSize: 20,
                  )),
              controller: _textEditingController,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Categoria do item:",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10.0,
                    bottom: 10,
                  ),
                  child: DropdownButton<String>(
                    value: _itemSelecionado,
                    items: _categorias.map((String dropDownStringItem) {
                      return DropdownMenuItem<String>(
                        value: dropDownStringItem,
                        child: Text(
                          dropDownStringItem,
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? itemSelecionado) {
                      setState(() {
                        _itemSelecionado = itemSelecionado!;
                      });
                    },
                  ),
                ),
              ],
            ),
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
                ontap: () => setData(
                  _textEditingController.text,
                  _itemSelecionado.toString(),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

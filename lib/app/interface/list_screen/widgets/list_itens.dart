// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../../models/item_model.dart';
import '../../../repositorio/repositorio_item.dart';
import 'card_itens.dart';

class ListItens extends StatefulWidget {
  final int idList;
  final String category;
  bool visible;
  ListItens({
    Key? key,
    required this.idList,
    required this.category,
    required this.visible,
  }) : super(key: key);

  @override
  State<ListItens> createState() => _ListItensState();
}

class _ListItensState extends State<ListItens> {
  final RepositorioDeItem _repositorioDeItem = RepositorioDeItem();
  bool _checked = false;

  bool verificaClique(bool estado) {
    if (estado == true) {
      return false;
    } else {
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return CardItens(
      widget: FutureBuilder(
        future: _repositorioDeItem.getAll(
          widget.idList,
        ),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var itens = snapshot.data! as List<ItemModel>;
            ItemModel item;
            for (int cat = 0; cat < itens.length; cat++) {
              item = itens[cat];
              if (item.category == widget.category) {
                return ListView.builder(
                  itemCount: itens.length,
                  itemBuilder: (_, index) {
                    if (itens[index].category == widget.category) {
                      return CheckboxListTile(
                          value: _checked,
                          title: Text(
                            "${itens[index].nameItem}",
                            style: const TextStyle(
                              fontSize: 20,
                              color: Color(0xFF44AA99),
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          onChanged: (bool? value) {
                            setState(() {
                              _checked = value!;
                            });
                          });
                    }
                    return const SizedBox(
                      height: 0,
                    );
                  },
                );
              }
            }
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
      visible: widget.visible,
    );
  }
}

class CheckBoxModel {
  String? texto;
  bool checked;

  CheckBoxModel({this.texto, this.checked = false});
}

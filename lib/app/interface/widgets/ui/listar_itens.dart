import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:shoplist/app/core/parametros.dart';
import 'package:shoplist/app/interface/screens/list_screen.dart';
import 'package:shoplist/app/repositorio/repositorio_item.dart';

import '../../../models/item_model.dart';
// import '../../../repositorio/repositorio_cell.dart';

class ListarItens extends StatefulWidget {
  const ListarItens({Key? key, required this.AndroidId}) : super(key: key);
  final int AndroidId;

  @override
  State<ListarItens> createState() => _ListarItensState();
}

class _ListarItensState extends State<ListarItens> {
  Parametros data() {
    Parametros p = Parametros(dados: {"cell_id": widget.AndroidId});
    return p;
  }

  // final RepositorioCells _repositorioCells = RepositorioCells();
  final RepositorioDeItem _repositorioDeItem = RepositorioDeItem();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _repositorioDeItem.getAll(widget.AndroidId),
      builder: ((context, AsyncSnapshot<List<ItemModel>> snapshot) {
        if (snapshot.hasData) {
          var lista = snapshot.data!;
          return ListView.builder(
              itemCount: lista.length,
              itemBuilder: (_, index) {
                ItemModel itens = lista[index];
                return Partitions(
                  sectionName: '${itens.category}',
                  nameBox: Column(
                    children: <Widget>[
                      ChecarCaixa(title: '${itens.nameItem}'),
                    ],
                  ),
                );
              });
        }
        return const CircularProgressIndicator();
      }),
    );
  }
}

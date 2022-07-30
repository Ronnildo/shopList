import 'package:flutter/material.dart';
import 'package:shoplist/app/core/parametros.dart';
import 'package:shoplist/app/interface/screens/list_screen.dart';
import 'package:shoplist/app/interface/widgets/components/card_reuse.dart';
import 'package:shoplist/app/models/item_model.dart';
import 'package:shoplist/app/repositorio/repositorio_cell.dart';
import 'package:shoplist/app/repositorio/repositorio_item.dart';

import '../../../models/listas_model.dart';

class ListarListas extends StatefulWidget {
  final String androidId;
  const ListarListas({Key? key, required this.androidId}) : super(key: key);

  @override
  State<ListarListas> createState() => _ListarListasState();
}

class _ListarListasState extends State<ListarListas> {
  Parametros data() {
    Parametros p = Parametros(dados: {"cell_id": widget.androidId});
    return p;
  }

  final RepositorioCells _repositorioCells = RepositorioCells();
  final RepositorioDeItem _repositorioDeItem = RepositorioDeItem();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _repositorioCells.get(data()),
      builder: ((context, AsyncSnapshot<List<ListaModel>> snapshot) {
        if (snapshot.hasData) {
          var lista = snapshot.data!;
          return ListView.builder(
            itemCount: lista.length,
            itemBuilder: (_, index) {
              ListaModel listas = lista[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ListScreen(id: '',)));
                },
                child: ReuseCard(
                  widget: ListView(
                    children: [
                      Text(
                        "${listas.mes}",
                        style: const TextStyle(
                          fontSize: 35,
                          color: Color(0xFFA6BAB2),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      FutureBuilder(
                        future: _repositorioDeItem.getAll(listas.id!.toInt()),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            var item = snapshot.data! as List<ItemModel>;
                            if (item.isEmpty) {
                              return Column(
                                children: const [
                                  Text(
                                    "",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Text(
                                    "",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              );
                            } else {
                              return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${item[0].category}",
                                      style: const TextStyle(
                                        fontSize: 22,
                                        color: Color(0xFFA6BAB2),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      item.isEmpty ? "" : "${item[1].category}",
                                      style: const TextStyle(
                                        fontSize: 22,
                                        color: Color(0xFFA6BAB2),
                                      ),
                                    ),
                                  ]);
                            }
                          }
                          return const Center(
                              child: CircularProgressIndicator());
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        }
        return const Center(child: CircularProgressIndicator());
      }),
    );
  }
}
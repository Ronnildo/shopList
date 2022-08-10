import 'package:flutter/material.dart';
import 'package:shoplist/app/core/parametros.dart';
import 'package:shoplist/app/interface/widgets/card_reuse.dart';
import 'package:shoplist/app/repositorio/repositorio_cell.dart';

import '../../models/listas_model.dart';
import '../list_screen/list_screen.dart';
import 'main_category.dart';

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
                      builder: (context) => ListScreen(
                        id: listas.id!,
                        mes: listas.mes!,
                      ),
                    ),
                  );
                },
                child: ReuseCard(
                  widget: ListView(
                    // crossAxisAlignment: CrossAxisAlignment.start,
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
                      MainCategory(id: listas.id!),
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

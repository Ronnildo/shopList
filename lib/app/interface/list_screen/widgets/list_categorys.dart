import 'package:flutter/material.dart';
import 'package:shoplist/app/interface/list_screen/widgets/category.dart';
import 'package:shoplist/app/models/item_model.dart';
import 'package:shoplist/app/repositorio/repositorio_item.dart';

class ListCategorys extends StatefulWidget {
  final int idList;
  final String mes;
  const ListCategorys({Key? key, required this.idList, required this.mes})
      : super(key: key);

  @override
  State<ListCategorys> createState() => _ListarCategorysState();
}

class _ListarCategorysState extends State<ListCategorys> {
  final RepositorioDeItem _repositorioDeItem = RepositorioDeItem();
  final bool _isCheck = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 10.0,
            bottom: 10,
          ),
          child: Text(
            widget.mes,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 50,
            ),
          ),
        ),
        Expanded(
          child: FutureBuilder(
            future: _repositorioDeItem.getAll(widget.idList),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                var list = snapshot.data! as List<ItemModel>;
                return Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemCount: list.length,
                        itemBuilder: (_, int index) {
                          ItemModel it = list[index];
                          for (int i = 0; i <= list.length; i++) {
                            if (index == i) {
                              break;
                            }
                            if (list[index].category == list[i].category) {
                              return const SizedBox(
                                height: 0,
                              );
                            }
                          }
                          return Categorys(
                            idList: widget.idList,
                            category: it.category!,
                            estado: _isCheck,
                          );
                        },
                      ),
                    ),
                  ],
                );
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ),
      ],
    );
  }
}

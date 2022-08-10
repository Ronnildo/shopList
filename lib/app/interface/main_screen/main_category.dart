// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:shoplist/app/models/item_model.dart';
import 'package:shoplist/app/repositorio/repositorio_item.dart';

class MainCategory extends StatefulWidget {
  final int id;
  const MainCategory({Key? key, required this.id}) : super(key: key);

  @override
  State<MainCategory> createState() => _MainCategoryState();
}

class _MainCategoryState extends State<MainCategory> {
  final RepositorioDeItem _repositorioDeItem = RepositorioDeItem();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _repositorioDeItem.getAll(widget.id),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          var item = snapshot.data! as List<ItemModel>;
          if (item.isNotEmpty) {
            String category;
            for (int i = 0; i < item.length; i++) {
              category = item[i].category!;
              if (item.isNotEmpty) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${item[0].category}",
                      style: const TextStyle(
                        fontSize: 25,
                        color: Color(0xFFA6BAB2),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "${item[1].category}",
                      style: const TextStyle(
                        fontSize: 25,
                        color: Color(0xFFA6BAB2),
                      ),
                    ),
                  ],
                );
              }
            }
          }
          return Column(
            children: const [
              Text(""),
              Text(""),
            ],
          );
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shoplist/app/interface/widgets/container_color.dart';

import 'widgets/insert_Item.dart';
import 'widgets/list_categorys.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key, required this.id, required this.mes})
      : super(key: key);
  final int id;
  final String mes;

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF89CDB2),
      body: SafeArea(
        child: ContainerColor(
          widget: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 10,
            ),
            child: ListCategorys(
              idList: widget.id,
              mes: widget.mes,
            ),
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 60.0,
        ),
        child: FloatingActionButton(
          backgroundColor: const Color.fromRGBO(74, 151, 119, 1),
          child: const Icon(Icons.add),
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => PopUpInsertItem(
                      idList: widget.id.toInt(),
                    ));
          },
        ),
      ),
    );
  }
}

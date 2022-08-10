// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'list_itens.dart';

class Categorys extends StatefulWidget {
  final String category;
  final int idList;
  bool estado;
  Categorys({
    Key? key,
    required this.category,
    required this.estado,
    required this.idList,
  }) : super(key: key);

  @override
  State<Categorys> createState() => _CategorysState();
}

class _CategorysState extends State<Categorys> {
  bool nulo(String category) {
    if (category == "null") {
      return true;
    } else {
      return false;
    }
  }

  void mudaEstado() {
    if (widget.estado == false) {
      setState(() {
        widget.estado = true;
      });
    } else {
      setState(() {
        widget.estado = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: Text(
            nulo(widget.category) ? "Sem categoria" : widget.category,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
          trailing: GestureDetector(
            onTap: mudaEstado,
            child: widget.estado
                ? const Icon(
                    FontAwesomeIcons.angleDown,
                  )
                : const Icon(
                    FontAwesomeIcons.angleUp,
                  ),
          ),
        ),
        ListItens(
          idList: widget.idList,
          category: widget.category,
          visible: widget.estado,
        ),
      ],
    );
  }
}

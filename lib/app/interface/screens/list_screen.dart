import 'package:flutter/material.dart';
import 'package:shoplist/app/interface/widgets/popup_list.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF89CDB2),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                children: const <Widget>[
                  Icon(Icons.arrow_back),
                ],
              ),
              const Text(
                'Julho',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              const SizedBox(
                height: 25.0,
              ),
              Partitions(
                sectionName: 'Carnes e Frios',
                teste: ListView(
                  children: [
                    ChecarCaixa(
                      title: 'Programa',
                    ),
                    ChecarCaixa(title: 'programa 2'),
                  ],
                ),
              ),
              Partitions(
                sectionName: 'Bebidas',
                teste: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return ChecarCaixa(title: 'retorno');
                  },
                ),
              ),
              Partitions(
                sectionName: 'Higiene Pessoal',
                teste: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return ChecarCaixa(title: 'Macbook');
                    }),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(74, 151, 119, 1),
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const PopUpInsertList()));
        },
      ),
    );
  }
}

class Partitions extends StatelessWidget {
  const Partitions({Key? key, required this.sectionName, required this.teste})
      : super(key: key);
  final String sectionName;
  final Widget teste;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              sectionName,
              style: const TextStyle(fontSize: 15.0),
            ),
            const Icon(Icons.expand_less),
          ],
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
          ),
          height: 100.0,
          child: teste,
        ),
      ],
    );
  }
}

class ChecarCaixa extends StatefulWidget {
  ChecarCaixa({Key? key, required this.title, this.checado = false})
      : super(key: key);

  bool checado;
  final String title;

  @override
  State<ChecarCaixa> createState() => _ChecarCaixaState();
}

class _ChecarCaixaState extends State<ChecarCaixa> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: CheckboxListTile(
        activeColor: const Color(0xFF89CDB2),
        controlAffinity: ListTileControlAffinity.leading,
        title: Text(
          widget.title,
          style: const TextStyle(fontSize: 15.0),
        ),
        value: widget.checado,
        onChanged: (value) => setState(() => widget.checado = value!),
      ),
    );
  }
}

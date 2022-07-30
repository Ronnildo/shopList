import 'package:flutter/material.dart';
import 'package:shoplist/app/interface/widgets/components/teste_popup_list.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key, required this.id}) : super(key: key);
  final String id;

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
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          child: SingleChildScrollView(
            physics: const PageScrollPhysics(),
            scrollDirection: Axis.vertical,
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
                Partitions(
                    sectionName: 'Carnes e Frios',
                    nameBox: Column(
                      children: <Widget> [
                        ChecarCaixa(title: 'Picanha'),
                        ChecarCaixa(title: 'Coração'),
                        ChecarCaixa(title: 'Coxão mole'),
                        ChecarCaixa(title: 'Filé Mignon'),
                        ChecarCaixa(title: 'Coxa'),
                        ChecarCaixa(title: 'Sobre-Coxa'),
                        ChecarCaixa(title: 'Sobre-Coxa'),
                      ],
                    )
                ),
                Partitions(
                  sectionName: 'Bebidas',
                  nameBox: Column(
                    children: <Widget> [
                      ChecarCaixa(title: 'Redbull'),
                      ChecarCaixa(title: 'Fresh'),
                      ChecarCaixa(title: 'Monster'),
                      ChecarCaixa(title: 'Cocacola'),
                      ChecarCaixa(title: 'New Suith Scooth White Wine'),
                      ChecarCaixa(title: 'Antardita'),
                      ChecarCaixa(title: 'Sukita'),
                      ChecarCaixa(title: 'Chuva de Prata'),
                    ],
                  ),
                ),
                Partitions(
                  sectionName: 'Higiene Pessoal',
                  nameBox: Column(
                    children: <Widget> [
                      ChecarCaixa(title: 'Papel higiênico'),
                      ChecarCaixa(title: 'Absorvente Feminino'),
                      ChecarCaixa(title: 'Sabonete Líquido'),
                      ChecarCaixa(title: 'Sobonete em barra'),
                      ChecarCaixa(title: 'Lenços Umidecidos'),
                      ChecarCaixa(title: 'Controle do Ph'),
                      ChecarCaixa(title: 'Escova de Dentes'),
                      ChecarCaixa(title: 'Creme Dental'),
                      ChecarCaixa(title: 'Água Micelair'),
                      ChecarCaixa(title: 'Água Micelair'),
                    ],
                  ),
                ),
              ],
            ),
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
  const Partitions({Key? key, required this.sectionName, /*required this.teste,*/ this.nameBox})
      : super(key: key);
  final String sectionName;
  //final Widget teste;
  final Column? nameBox;

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
          color: Colors.white,
          child: nameBox,
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
  late String Name;

  @override
  State<ChecarCaixa> createState() => _ChecarCaixaState();
}

class _ChecarCaixaState extends State<ChecarCaixa> {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      activeColor: const Color(0xFF89CDB2),
      controlAffinity: ListTileControlAffinity.leading,
      title: Text(
        widget.title,
        style: const TextStyle(fontSize: 15.0),
      ),
      value: widget.checado,
      onChanged: (value) => setState(() => widget.checado = value!),
    );
  }
}

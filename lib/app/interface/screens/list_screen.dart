import 'package:device_info/device_info.dart';
import 'package:flutter/material.dart';
import 'package:shoplist/app/interface/widgets/components/teste_popup_list.dart';
import 'package:shoplist/app/interface/widgets/ui/listar_itens.dart';
import 'package:shoplist/app/repositorio/repositorio_item.dart';

import '../../models/item_model.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key, required this.id}) : super(key: key);
  final int id;

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  final DeviceInfoPlugin _deviceInfo = DeviceInfoPlugin();
  AndroidDeviceInfo? androidDeviceInfo;
  String? androidId;

  @override
  void initState() {
    super.initState();
    getDeviceInfo;
  }

  void getDeviceInfo() async {
    androidDeviceInfo = await _deviceInfo.androidInfo;
    setState(() {
      androidId = androidDeviceInfo?.androidId;
    });
  }

  @override
  Widget build(BuildContext context) {
    RepositorioDeItem _repo = RepositorioDeItem();
    return Scaffold(
      backgroundColor: const Color(0xFF89CDB2),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          child: SingleChildScrollView(
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
                  sectionName: 'teste',
                  nameBox: Column(
                    children: <Widget>[
                      ChecarCaixa(title: 'arroz'),
                      ChecarCaixa(title: 'arroz'),
                      ChecarCaixa(title: 'arroz'),
                      ChecarCaixa(title: 'arroz'),
                      FutureBuilder(
                          future: _repo.getAll(1),
                          builder: (context,
                              AsyncSnapshot<List<ItemModel>> snapshot) {
                            if (snapshot.hasData) {
                              var lista = snapshot.data!;
                              return ListView.builder(
                                  itemCount: lista.length,
                                  itemBuilder: (_, index) {
                                    ItemModel itens = lista[index];
                                    return ChecarCaixa(title: '$lista');
                                  });
                            }
                            return CircularProgressIndicator();
                          }),
                    ],
                  ),
                )
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
  const Partitions({Key? key, required this.sectionName, this.nameBox})
      : super(key: key);
  final String sectionName;
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
  final String title;
  bool checado;

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

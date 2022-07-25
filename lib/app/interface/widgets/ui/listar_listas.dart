import 'package:device_info/device_info.dart';
import 'package:flutter/material.dart';
import 'package:shoplist/app/core/parametros.dart';
import 'package:shoplist/app/interface/widgets/components/card_reuse.dart';
import 'package:shoplist/app/repositorio/repositorio_cell.dart';

import '../../../models/listas_model.dart';

class ListarListas extends StatefulWidget {
  const ListarListas({Key? key}) : super(key: key);

  @override
  State<ListarListas> createState() => _ListarListasState();
}

class _ListarListasState extends State<ListarListas> {
  DeviceInfoPlugin deviceInfo =
      DeviceInfoPlugin(); // instantiate device info plugin
  AndroidDeviceInfo? androidDeviceInfo;

  String? host, id, hardware, model, androidid;
  @override
  void initState() {
    super.initState();
    getDeviceinfo();
  }

  void getDeviceinfo() async {
    androidDeviceInfo = await deviceInfo
        .androidInfo; // instantiate Android Device Infoformation
    setState(() {
      host = androidDeviceInfo?.host;
      id = androidDeviceInfo?.id;
      hardware = androidDeviceInfo?.hardware;
      model = androidDeviceInfo?.model;
      androidid = androidDeviceInfo?.androidId;
    });
  }

  final RepositorioCells _repositorioCells = RepositorioCells();

  @override
  Widget build(BuildContext context) {
    Parametros p = Parametros(dados: {"cell_id": androidid});
    return FutureBuilder(
      future: _repositorioCells.get(p),
      builder: ((context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          var lista = snapshot.data! as List<ListaModel>;
          return ListView.builder(
            itemCount: lista.length,
            itemBuilder: (_, index) {
              ListaModel listas = lista[index];
              return ReuseCard(
                  widget: Column(
                children: [
                  Text(
                    "${listas.mes}",
                    style: const TextStyle(
                      color: Color(0xFFA6BAB2),
                      fontSize: 35,
                    ),
                  )
                ],
              ));
            },
          );
        }
        return const CircularProgressIndicator();
      }),
    );
  }
}

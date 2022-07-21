import 'package:dio/dio.dart';
import 'package:shoplist/app/core/parametros.dart';
import 'package:shoplist/app/models/listas_model.dart';
import 'package:shoplist/app/repositorio/repositorio.dart';

import '../models/cell_model.dart';

class RepositorioCells extends Repositorio {
  final String _baseUrl = "https://organizershop.herokuapp.com/";
  @override
  Future add(Parametros p) async {
    throw UnimplementedError();
  }

  @override
  Future delete() {
    throw UnimplementedError();
  }

  @override
  Future get(Parametros p) async {
    dio = Dio(BaseOptions(baseUrl: _baseUrl));
    try {
      Response? response = await dio?.post(
        "/cell",
        data: p.dados,
      );
      //print(response?.data.toString());
      if (response?.statusCode == 200) {
        if (ListasModel.fromJson(response?.data).listas! == []) {
          return ListaModel(id: null, mes: "err.message", cellId: null);
        }
        return ListasModel.fromJson(response?.data).listas!;
      }
    } on DioError catch (err) {
      return ListasModel(
        listas: [
          ListaModel(id: null, mes: err.message, cellId: null),
        ],
      ).listas!;
    }
  }

  @override
  Future<List<CellModel>> getAll() async {
    throw UnimplementedError();
  }

  @override
  Future update(Parametros p) {
    throw UnimplementedError();
  }
}

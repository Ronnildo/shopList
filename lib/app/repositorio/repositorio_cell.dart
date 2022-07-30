import 'package:dio/dio.dart';
import 'package:shoplist/app/core/constantes.dart';
import 'package:shoplist/app/core/parametros.dart';
import 'package:shoplist/app/models/listas_model.dart';
import 'package:shoplist/app/repositorio/repositorio.dart';

class RepositorioCells extends Repositorio {
  @override
  Future add(String id, Parametros p) async {
    throw UnimplementedError();
  }

  @override
  Future delete() {
    throw UnimplementedError();
  }

  @override
  Future<List<ListaModel>> get(Parametros p) async {
    dio = Dio(BaseOptions(
        baseUrl: BASE_URL, connectTimeout: 10000, receiveTimeout: 10000));
    try {
      Response? response = await dio?.post(
        "/cell",
        data: p.dados,
      );

      if (response?.statusCode == 200) {
        //if (ListasModel.fromJson(response?.data).listas! == []) {}
        return ListasModel.fromJson(response?.data).listas!;
      }
    } on DioError catch (err) {
      return ListasModel(
        listas: [
          ListaModel(id: null, mes: err.message, cellId: null),
        ],
      ).listas!;
    }
    return ListasModel(
      listas: [
        ListaModel(id: null, mes: "Ale", cellId: null),
      ],
    ).listas!;
  }

  @override
  Future update(Parametros p) {
    throw UnimplementedError();
  }
}

import 'package:dio/dio.dart';
import 'package:shoplist/app/core/parametros.dart';
import 'package:shoplist/app/models/listas_model.dart';
import 'package:shoplist/app/repositorio/repositorio.dart';
import '../core/constantes.dart';

class RepositorioLista extends Repositorio {
  @override
  Future add(String id, Parametros p) async {
    dio = Dio(
      BaseOptions(
        baseUrl: BASE_URL,
        connectTimeout: 7000,
        receiveTimeout: 9000,
      ),
    );
    try {
      // ignore: unused_local_variable
      Response? response = await dio?.post("/lista/$id", data: p.dados);
      if (response?.statusCode == 200) {
        return ListaModel(
            cellId: null,
            id: null,
            mes: "Lista Criada com sucesso ${p.dados['mes']}");
      }
    } on DioError catch (e) {
      return ListaModel(cellId: e.error, id: null, mes: "Lista já existe");
    }
  }

  @override
  Future delete() {
    throw UnimplementedError();
  }

  @override
  Future get(Parametros p) {
    throw UnimplementedError();
  }

  @override
  Future update(Parametros p) {
    throw UnimplementedError();
  }
}

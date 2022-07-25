import 'package:dio/dio.dart';
import 'package:shoplist/app/core/parametros.dart';
import 'package:shoplist/app/models/listas_model.dart';
import 'package:shoplist/app/repositorio/repositorio.dart';

class RepositorioLista extends Repositorio {
  final String _baseUrl = "https://organizershop.herokuapp.com/";
  @override
  Future add(String id, Parametros p) async {
    dio = Dio(BaseOptions(baseUrl: _baseUrl));
    try {
      Response? response = await dio?.post("/lista/$id", data: p.dados);
      return ListaModel.fromJson(response?.data);
    } on DioError catch (err) {
      return ListaModel(cellId: null, id: null, mes: err.message);
    }
  }

  @override
  Future delete() {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future get(Parametros p) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future getAll() {
    // TODO: implement getAll
    throw UnimplementedError();
  }

  @override
  Future update(Parametros p) {
    // TODO: implement update
    throw UnimplementedError();
  }
}

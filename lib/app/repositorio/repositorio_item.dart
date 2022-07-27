import 'package:dio/dio.dart';
import 'package:shoplist/app/core/constantes.dart';
import 'package:shoplist/app/core/parametros.dart';
import 'package:shoplist/app/models/item_model.dart';
import 'package:shoplist/app/repositorio/repositorio.dart';

class RepositorioDeItem extends Repositorio {
  @override
  Future add(String id, Parametros p) {
    // TODO: implement add
    throw UnimplementedError();
  }

  @override
  Future delete() {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<ListaItensModel>> get(Parametros p) {
    // TODO: implement get
    throw UnimplementedError();
  }

  Future<List<ItemModel>> getAll(int id) async {
    dio = Dio(BaseOptions(baseUrl: BASE_URL));
    try {
      Response? response = await dio?.get("/lista/$id/itens");
      return ListaItensModel.fromJson(response?.data).itens!;
    } on DioError catch (err) {
      return ListaItensModel(
        itens: [ItemModel(nameItem: err.message, category: null, id: null)],
      ).itens!;
    }
  }

  @override
  Future update(Parametros p) {
    // TODO: implement update
    throw UnimplementedError();
  }
}

import 'package:dio/dio.dart';
import 'package:shoplist/app/core/constantes.dart';
import 'package:shoplist/app/core/parametros.dart';
import 'package:shoplist/app/models/item_model.dart';
import 'package:shoplist/app/repositorio/repositorio.dart';

class RepositorioDeItem extends Repositorio {
  @override
  Future<ItemModel> add(String id, Parametros p) async {
    dio = Dio(BaseOptions(baseUrl: BASE_URL));
    try {
      Response? response = await dio?.post("/lista/$id/item", data: p.dados);
      return ItemModel.fromJson(response?.data);
    } on DioError catch (err) {
      return ItemModel(
          id: null, category: err.error, listaId: null, nameItem: "Vazio");
    }
  }

  @override
  Future delete() {
    throw UnimplementedError();
  }

  @override
  Future<List<ListaItensModel>> get(Parametros p) {
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
    throw UnimplementedError();
  }
}

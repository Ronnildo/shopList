import 'package:dio/dio.dart';
import 'package:shoplist/app/core/constantes.dart';
import 'package:shoplist/app/core/parametros.dart';
import 'package:shoplist/app/models/item_model.dart';
import 'package:shoplist/app/repositorio/repositorio.dart';

class RepositorioDeItem extends Repositorio {
  @override
  Future add(String id, Parametros p) async {
    dio = Dio(
      BaseOptions(
        baseUrl: BASE_URL,
        receiveTimeout: 9000,
        connectTimeout: 7000,
      ),
    );
    try {
      Response? response = await dio?.post('/lista/$id/itens', data: p.dados);
      if (response?.statusCode == 200) {
        return ItemModel(
          category: null,
          listaId: null,
          id: null,
          nameItem: 'Item adicionado ${p.dados['item']}'
        );
      }
    } on DioError catch (e) {
      return ItemModel(nameItem: 'item já adicionado', id: null, listaId: null, category: null);
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

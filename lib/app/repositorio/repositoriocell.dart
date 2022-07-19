import 'package:dio/dio.dart';
import 'package:shoplist/app/core/parametros.dart';
import 'package:shoplist/app/repositorio/repositorio.dart';

class RepositorioCells extends Repositorio {
  final String _baseUrl = "https://organizershop.herokuapp.com/";

  final String cellId;

  RepositorioCells({required this.cellId});

  @override
  Future add(Parametros p) async {
    dio = Dio(
      BaseOptions(baseUrl: _baseUrl),
    );

    //p = Parametros(dados: {"cell_id": cellId});

    Response? response =
        await dio?.post("/cell", data: CellModel(cellId: this.cellId).toJson());
    print(response?.data.toString());

    return CellModel().toJson();
    // TODO: implement add
    throw UnimplementedError();
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

class CellModel {
  String? cellId;

  CellModel({this.cellId});

  CellModel.fromJson(Map<String, dynamic> json) {
    cellId = json['cell_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['cell_id'] = cellId;
    return data;
  }
}

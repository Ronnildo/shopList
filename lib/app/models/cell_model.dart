import 'listas_model.dart';

class CellModel {
  int? id;
  String? cellId;

  CellModel({this.id, this.cellId});

  CellModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    cellId = json['cell_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['cell_id'] = cellId;
    return data;
  }
}

class ListaCellModel {
  int? id;
  String? cellId;
  List<ListaModel>? listas;

  ListaCellModel({this.id, this.cellId, this.listas});

  ListaCellModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    cellId = json['cell_id'];
    if (json['listas'] != null) {
      listas = <ListaModel>[];
      json['listas'].forEach((v) {
        listas!.add(ListaModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['cell_id'] = cellId;
    if (listas != null) {
      data['listas'] = listas!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Listas {
  int? id;
  String? mes;
  int? cellId;

  Listas({this.id, this.mes, this.cellId});

  Listas.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    mes = json['mes'];
    cellId = json['cell_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['mes'] = mes;
    data['cell_id'] = cellId;
    return data;
  }
}

class CellModelList {
  List<CellModel>? data;

  CellModelList({this.data});

  CellModelList.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <CellModel>[];
      json['data'].forEach((v) {
        data!.add(CellModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  String? cellId;

  Data({this.id, this.cellId});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    cellId = json['cell_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['cell_id'] = cellId;
    return data;
  }
}

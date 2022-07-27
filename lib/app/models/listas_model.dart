class ListaModel {
  int? id;
  String? mes;
  int? cellId;

  ListaModel({this.id, this.mes, this.cellId});

  ListaModel.fromJson(Map<String, dynamic> json) {
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

class ListasModel {
  int? id;
  String? cellId;
  List<ListaModel>? listas;

  ListasModel({this.id, this.cellId, this.listas});

  ListasModel.fromJson(Map<String, dynamic> json) {
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

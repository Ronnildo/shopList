class ItemModel {
  int? id;
  String? nameItem;
  String? category;
  int? listaId;

  ItemModel({this.id, this.nameItem, this.category, this.listaId});

  ItemModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nameItem = json['nameItem'];
    category = json['category'];
    listaId = json['lista_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['nameItem'] = nameItem;
    data['category'] = category;
    data['lista_id'] = listaId;
    return data;
  }
}

class ListaItensModel {
  List<ItemModel>? itens;

  ListaItensModel({this.itens});

  ListaItensModel.fromJson(Map<String, dynamic> json) {
    if (json['itens'] != null) {
      itens = <ItemModel>[];
      json['itens'].forEach((v) {
        itens!.add(ItemModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (itens != null) {
      data['itens'] = itens!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ItensCategory {
  int? id;
  String? nameItem;
  String? category;
  String? createdAt;
  String? updatedAt;
  int? listaId;

  ItensCategory(
      {this.id,
      this.nameItem,
      this.category,
      this.createdAt,
      this.updatedAt,
      this.listaId});

  ItensCategory.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nameItem = json['nameItem'];
    category = json['category'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    listaId = json['lista_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['nameItem'] = nameItem;
    data['category'] = category;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['lista_id'] = listaId;
    return data;
  }
}

class ListaItensCategory {
  List<ItensCategory>? itens;

  ListaItensCategory({this.itens});

  ListaItensCategory.fromJson(Map<String, dynamic> json) {
    if (json['itens'] != null) {
      itens = <ItensCategory>[];
      json['itens'].forEach((v) {
        itens!.add(ItensCategory.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (itens != null) {
      data['itens'] = itens!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Itens {
  int? id;
  String? nameItem;
  String? category;
  String? createdAt;
  String? updatedAt;
  int? listaId;

  Itens(
      {this.id,
      this.nameItem,
      this.category,
      this.createdAt,
      this.updatedAt,
      this.listaId});

  Itens.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nameItem = json['nameItem'];
    category = json['category'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    listaId = json['lista_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['nameItem'] = nameItem;
    data['category'] = category;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['lista_id'] = listaId;
    return data;
  }
}

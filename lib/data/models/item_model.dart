import 'dart:convert';
import 'package:hive/hive.dart';
part 'item_model.g.dart';

@HiveType(typeId: 1, adapterName: 'ItemModelAdapter')
class ItemModel {
  @HiveField(0)
  int? id;

  @HiveField(1)
  int? pid;

  @HiveField(2)
  String? product;

  @HiveField(3)
  int? productType;

  @HiveField(4)
  String? sellPrice;

  @HiveField(5)
  String? buyPrice;

  @HiveField(6)
  String? mdate;

  @HiveField(7)
  String? mtime;

  ItemModel({
    this.id,
    this.pid,
    this.product,
    this.productType,
    this.sellPrice,
    this.buyPrice,
    this.mdate,
    this.mtime,
  });

  factory ItemModel.fromJson(Map<String, dynamic> json) {
    return ItemModel(
      id: json['id'],
      pid: json['pid'],
      product: json['product'],
      productType: json['product_type'],
      sellPrice: json['sell_price'],
      buyPrice: json['buy_price'],
      mdate: json['mdate'],
      mtime: json['mtime'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['pid'] = pid;
    data['product'] = product;
    data['product_type'] = productType;
    data['sell_price'] = sellPrice;
    data['buy_price'] = buyPrice;
    data['mdate'] = mdate;
    data['mtime'] = mtime;
    return data;
  }

  static List<ItemModel> listFromJson(List<dynamic> json) {
    return json.map((e) => ItemModel.fromJson(e)).toList();
  }

  static List<Map<String, dynamic>> listToJson(List<ItemModel> items) {
    return items.map((e) => e.toJson()).toList();
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ItemModel &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          pid == other.pid &&
          product == other.product &&
          productType == other.productType &&
          sellPrice == other.sellPrice &&
          buyPrice == other.buyPrice &&
          mdate == other.mdate &&
          mtime == other.mtime;

  @override
  int get hashCode =>
      id.hashCode ^
      pid.hashCode ^
      product.hashCode ^
      productType.hashCode ^
      sellPrice.hashCode ^
      buyPrice.hashCode ^
      mdate.hashCode ^
      mtime.hashCode;
}

// Utility functions for JSON list conversion
List<ItemModel> itemsFromJson(String str) =>
    ItemModel.listFromJson(json.decode(str));
String itemsToJson(List<ItemModel> data) =>
    json.encode(ItemModel.listToJson(data));

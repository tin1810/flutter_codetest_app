// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ItemModelAdapter extends TypeAdapter<ItemModel> {
  @override
  final int typeId = 1;

  @override
  ItemModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ItemModel(
      id: fields[0] as int?,
      pid: fields[1] as int?,
      product: fields[2] as String?,
      productType: fields[3] as int?,
      sellPrice: fields[4] as String?,
      buyPrice: fields[5] as String?,
      mdate: fields[6] as String?,
      mtime: fields[7] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ItemModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.pid)
      ..writeByte(2)
      ..write(obj.product)
      ..writeByte(3)
      ..write(obj.productType)
      ..writeByte(4)
      ..write(obj.sellPrice)
      ..writeByte(5)
      ..write(obj.buyPrice)
      ..writeByte(6)
      ..write(obj.mdate)
      ..writeByte(7)
      ..write(obj.mtime);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ItemModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

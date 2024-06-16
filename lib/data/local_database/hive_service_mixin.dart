import 'package:flutter_code_test_application/data/models/item_model.dart';
import 'package:hive/hive.dart';

mixin HiveServiceMixin {
  void saveAllItems(List<ItemModel>? itemList) async {
    Map<int?, ItemModel> itemMap = {
      for (var item in itemList ?? []) item.id: item
    };
    await getItemBox().putAll(itemMap);
  }

  List<ItemModel>? getAllItems() {
    return getItemBox().values.toList();
  }

  Box<ItemModel> getItemBox() {
    return Hive.box<ItemModel>('Box_Name_ItemModel');
  }
}

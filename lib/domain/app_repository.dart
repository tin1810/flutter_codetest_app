import 'package:flutter_code_test_application/data/models/item_model.dart';

abstract class AppRepository {
  Future<List<ItemModel>> fetchItem();
}

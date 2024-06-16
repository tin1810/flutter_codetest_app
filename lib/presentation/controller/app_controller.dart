import 'package:flutter_code_test_application/data/local_database/hive_service_mixin.dart';
import 'package:flutter_code_test_application/data/models/item_model.dart';

import 'package:flutter_code_test_application/domain/app_repository.dart';
import 'package:flutter_code_test_application/domain/app_repository_impl.dart';
import 'package:flutter_code_test_application/presentation/pages/error_dialog.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/state_manager.dart';

class AppController extends GetxController with HiveServiceMixin {
  final AppRepository _appRepository = AppRepositoryImpl();

  var isLoading = false.obs;
  var itemLists = <ItemModel>[].obs;
  ItemModel? itemModel;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  fetchProducts() async {
    isLoading(true);
    _appRepository.fetchItem().then((response) {
      saveAllItems(response);
      itemLists.addAll(getAllItems() ?? []);
      isLoading(false);
      update();
    }).onError((e, st) {
      isLoading(false);
      update();
    });
  }
}

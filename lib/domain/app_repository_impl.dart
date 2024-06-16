import 'package:flutter_code_test_application/data/models/item_model.dart';
import 'package:flutter_code_test_application/data/network_provider/api_service.dart';
import 'package:flutter_code_test_application/domain/app_repository.dart';

class AppRepositoryImpl implements AppRepository {
  static final AppRepositoryImpl _singleton = AppRepositoryImpl._internal();
  factory AppRepositoryImpl() {
    return _singleton;
  }
  AppRepositoryImpl._internal();

  ApiService _apiService = ApiService();

  void setService(ApiService apiService) {
    _apiService = apiService;
  }

  @override
  Future<List<ItemModel>> fetchItem() {
    return _apiService.fetchItem();
  }
}

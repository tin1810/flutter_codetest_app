import 'dart:convert';
import 'dart:io';
// Import Material library for dialogs
import 'package:flutter_code_test_application/app/config/app_type_def.dart';
import 'package:flutter_code_test_application/data/models/item_model.dart';
import 'package:flutter_code_test_application/data/network_provider/api_constants.dart';
import 'package:flutter_code_test_application/presentation/pages/error_dialog.dart';
import 'package:http/http.dart' as http;

class ApiService {
  ApiService();

  Future<List<ItemModel>> fetchItem() async {
    try {
      final response = await http.get(Uri.parse(Base_URL));

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        if (data is SuccessList) {
          return data
              .map<ItemModel>((json) => ItemModel.fromJson(json))
              .toList();
        } else {
          showErrorDialog("My fetch Data type is $ErrorMap and code is 200");
          throw Exception("My fetch Data type is $ErrorMap and code is 200");
        }
      } else {
        throw HttpException(
          'Failed to load products with status code: ${response.statusCode}',
          uri: Uri.parse(Base_URL),
        );
      }
    } on SocketException {
      showErrorDialog('No Internet connection');
      throw Exception('No Internet connection');
    } on HttpException {
      showErrorDialog('Failed to load items');
      throw Exception('Failed to load items');
    } on FormatException {
      showErrorDialog('Bad response format');
      throw Exception('Bad response format');
    } catch (e) {
      showErrorDialog('Unexpected error: $e');
      throw Exception('Unexpected error: $e');
    }
  }
}

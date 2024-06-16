import 'dart:convert';

import 'package:flutter_code_test_application/data/models/item_model.dart';
import 'package:flutter_code_test_application/data/network_provider/api_service.dart';
import 'package:flutter_code_test_application/domain/app_repository_impl.dart';
import 'package:flutter_test/flutter_test.dart';

class MockApiService extends ApiService {
  @override
  Future<List<ItemModel>> fetchItem() async {
    return MockServer().getMockItemList();
  }
}

class MockServer {
  String jsonData = '''
  [
    {
        "id": 30,
        "pid": 10,
        "product": "Premier Diesel",
        "product_type": 3,
        "sell_price": "2380",
        "buy_price": "2380",
        "mdate": "2024-06-04",
        "mtime": "12:00:00"
    },
    {
        "id": 3,
        "pid": 1,
        "product": "Gold Bar (16)",
        "product_type": 1,
        "sell_price": "4870000",
        "buy_price": "4820000",
        "mdate": "2024-06-04",
        "mtime": "12:00:00"
    },
    {
        "id": 27,
        "pid": 9,
        "product": "Diesel",
        "product_type": 3,
        "sell_price": "2330",
        "buy_price": "2330",
        "mdate": "2024-06-04",
        "mtime": "12:00:00"
    },
    {
        "id": 6,
        "pid": 2,
        "product": "World Gold",
        "product_type": 1,
        "sell_price": "2330",
        "buy_price": "2330",
        "mdate": "2024-06-04",
        "mtime": "12:00:00"
    },
    {
        "id": 24,
        "pid": 8,
        "product": "95 RON",
        "product_type": 3,
        "sell_price": "2665",
        "buy_price": "2665",
        "mdate": "2024-06-04",
        "mtime": "12:00:00"
    },
    {
        "id": 9,
        "pid": 3,
        "product": "USD",
        "product_type": 2,
        "sell_price": "4200",
        "buy_price": "4100",
        "mdate": "2024-06-04",
        "mtime": "12:00:00"
    },
    {
        "id": 21,
        "pid": 7,
        "product": "92 RON",
        "product_type": 3,
        "sell_price": "2565",
        "buy_price": "2565",
        "mdate": "2024-06-04",
        "mtime": "12:00:00"
    },
    {
        "id": 12,
        "pid": 4,
        "product": "SGB",
        "product_type": 2,
        "sell_price": "3190",
        "buy_price": "3090",
        "mdate": "2024-06-04",
        "mtime": "12:00:00"
    },
    {
        "id": 18,
        "pid": 6,
        "product": "THB",
        "product_type": 2,
        "sell_price": "120",
        "buy_price": "115",
        "mdate": "2024-06-04",
        "mtime": "12:00:00"
    },
    {
        "id": 15,
        "pid": 5,
        "product": "CNY",
        "product_type": 2,
        "sell_price": "599",
        "buy_price": "575",
        "mdate": "2024-06-04",
        "mtime": "12:00:00"
    },
    {
        "id": 2,
        "pid": 1,
        "product": "Gold Bar (16)",
        "product_type": 1,
        "sell_price": "5260000",
        "buy_price": "5220000",
        "mdate": "2024-06-03",
        "mtime": "12:00:00"
    },
    {
        "id": 29,
        "pid": 10,
        "product": "Premier Diesel",
        "product_type": 3,
        "sell_price": "2380",
        "buy_price": "2380",
        "mdate": "2024-06-03",
        "mtime": "12:00:00"
    },
    {
        "id": 26,
        "pid": 9,
        "product": "Diesel",
        "product_type": 3,
        "sell_price": "2330",
        "buy_price": "2330",
        "mdate": "2024-06-03",
        "mtime": "12:00:00"
    },
    {
        "id": 23,
        "pid": 8,
        "product": "95 RON",
        "product_type": 3,
        "sell_price": "2665",
        "buy_price": "2665",
        "mdate": "2024-06-03",
        "mtime": "12:00:00"
    },
    {
        "id": 20,
        "pid": 7,
        "product": "92 RON",
        "product_type": 3,
        "sell_price": "2565",
        "buy_price": "2565",
        "mdate": "2024-06-03",
        "mtime": "12:00:00"
    },
    {
        "id": 17,
        "pid": 6,
        "product": "THB",
        "product_type": 2,
        "sell_price": "115",
        "buy_price": "111",
        "mdate": "2024-06-03",
        "mtime": "12:00:00"
    },
    {
        "id": 14,
        "pid": 5,
        "product": "CNY",
        "product_type": 2,
        "sell_price": "580",
        "buy_price": "565",
        "mdate": "2024-06-03",
        "mtime": "12:00:00"
    },
    {
        "id": 11,
        "pid": 4,
        "product": "SGB",
        "product_type": 2,
        "sell_price": "3090",
        "buy_price": "3000",
        "mdate": "2024-06-03",
        "mtime": "12:00:00"
    },
    {
        "id": 8,
        "pid": 3,
        "product": "USD",
        "product_type": 2,
        "sell_price": "4300",
        "buy_price": "4200",
        "mdate": "2024-06-03",
        "mtime": "12:00:00"
    },
    {
        "id": 5,
        "pid": 2,
        "product": "World Gold",
        "product_type": 1,
        "sell_price": "2320",
        "buy_price": "2320",
        "mdate": "2024-06-03",
        "mtime": "12:00:00"
    },
    {
        "id": 16,
        "pid": 6,
        "product": "THB",
        "product_type": 2,
        "sell_price": "116",
        "buy_price": "112",
        "mdate": "2024-06-01",
        "mtime": "12:00:00"
    },
    {
        "id": 19,
        "pid": 7,
        "product": "92 RON",
        "product_type": 3,
        "sell_price": "2565",
        "buy_price": "2565",
        "mdate": "2024-06-01",
        "mtime": "12:00:00"
    },
    {
        "id": 13,
        "pid": 5,
        "product": "CNY",
        "product_type": 2,
        "sell_price": "565",
        "buy_price": "555",
        "mdate": "2024-06-01",
        "mtime": "12:00:00"
    },
    {
        "id": 22,
        "pid": 8,
        "product": "95 RON",
        "product_type": 3,
        "sell_price": "2665",
        "buy_price": "2665",
        "mdate": "2024-06-01",
        "mtime": "12:00:00"
    },
    {
        "id": 10,
        "pid": 4,
        "product": "SGB",
        "product_type": 2,
        "sell_price": "3000",
        "buy_price": "2950",
        "mdate": "2024-06-01",
        "mtime": "12:00:00"
    },
    {
        "id": 25,
        "pid": 9,
        "product": "Diesel",
        "product_type": 3,
        "sell_price": "2330",
        "buy_price": "2330",
        "mdate": "2024-06-01",
        "mtime": "12:00:00"
    },
    {
        "id": 7,
        "pid": 3,
        "product": "USD",
        "product_type": 2,
        "sell_price": "4500",
        "buy_price": "4400",
        "mdate": "2024-06-01",
        "mtime": "12:00:00"
    },
    {
        "id": 28,
        "pid": 10,
        "product": "Premier Diesel",
        "product_type": 3,
        "sell_price": "2380",
        "buy_price": "2380",
        "mdate": "2024-06-01",
        "mtime": "12:00:00"
    },
    {
        "id": 4,
        "pid": 2,
        "product": "World Gold",
        "product_type": 1,
        "sell_price": "2320",
        "buy_price": "2320",
        "mdate": "2024-06-01",
        "mtime": "12:00:00"
    },
    {
        "id": 1,
        "pid": 1,
        "product": "Gold Bar (16)",
        "product_type": 1,
        "sell_price": "5270000",
        "buy_price": "5220000",
        "mdate": "2024-06-01",
        "mtime": "12:00:00"
    }
]
  ''';
  List<ItemModel> itemsFromJson() =>
      ItemModel.listFromJson(json.decode(jsonData));

  List<ItemModel> getMockItemList() {
    return itemsFromJson();
  }
}

List<ItemModel>? matcherItemList() {
  return [
    ItemModel(
        id: 30,
        pid: 10,
        product: "Premier Diesel",
        productType: 3,
        sellPrice: "2380",
        buyPrice: "2380",
        mdate: "2024-06-04",
        mtime: "12:00:00"),
    ItemModel(
        id: 3,
        pid: 1,
        product: "Gold Bar (16)",
        productType: 1,
        sellPrice: "4870000",
        buyPrice: "4820000",
        mdate: "2024-06-04",
        mtime: "12:00:00"),
    ItemModel(
        id: 27,
        pid: 9,
        product: "Diesel",
        productType: 3,
        sellPrice: "2330",
        buyPrice: "2330",
        mdate: "2024-06-04",
        mtime: "12:00:00"),
    ItemModel(
        id: 6,
        pid: 2,
        product: "World Gold",
        productType: 1,
        sellPrice: "2330",
        buyPrice: "2330",
        mdate: "2024-06-04",
        mtime: "12:00:00"),
    ItemModel(
        id: 24,
        pid: 8,
        product: "95 RON",
        productType: 3,
        sellPrice: "2665",
        buyPrice: "2665",
        mdate: "2024-06-04",
        mtime: "12:00:00"),
    ItemModel(
        id: 9,
        pid: 3,
        product: "USD",
        productType: 2,
        sellPrice: "4200",
        buyPrice: "4100",
        mdate: "2024-06-04",
        mtime: "12:00:00"),
    ItemModel(
        id: 21,
        pid: 7,
        product: "92 RON",
        productType: 3,
        sellPrice: "2565",
        buyPrice: "2565",
        mdate: "2024-06-04",
        mtime: "12:00:00"),
    ItemModel(
        id: 12,
        pid: 4,
        product: "SGB",
        productType: 2,
        sellPrice: "3190",
        buyPrice: "3090",
        mdate: "2024-06-04",
        mtime: "12:00:00"),
    ItemModel(
        id: 18,
        pid: 6,
        product: "THB",
        productType: 2,
        sellPrice: "120",
        buyPrice: "115",
        mdate: "2024-06-04",
        mtime: "12:00:00"),
    ItemModel(
        id: 15,
        pid: 5,
        product: "CNY",
        productType: 2,
        sellPrice: "599",
        buyPrice: "575",
        mdate: "2024-06-04",
        mtime: "12:00:00"),
    ItemModel(
        id: 2,
        pid: 1,
        product: "Gold Bar (16)",
        productType: 1,
        sellPrice: "5260000",
        buyPrice: "5220000",
        mdate: "2024-06-03",
        mtime: "12:00:00"),
    ItemModel(
        id: 29,
        pid: 10,
        product: "Premier Diesel",
        productType: 3,
        sellPrice: "2380",
        buyPrice: "2380",
        mdate: "2024-06-03",
        mtime: "12:00:00"),
    ItemModel(
        id: 26,
        pid: 9,
        product: "Diesel",
        productType: 3,
        sellPrice: "2330",
        buyPrice: "2330",
        mdate: "2024-06-03",
        mtime: "12:00:00"),
    ItemModel(
        id: 23,
        pid: 8,
        product: "95 RON",
        productType: 3,
        sellPrice: "2665",
        buyPrice: "2665",
        mdate: "2024-06-03",
        mtime: "12:00:00"),
    ItemModel(
        id: 20,
        pid: 7,
        product: "92 RON",
        productType: 3,
        sellPrice: "2565",
        buyPrice: "2565",
        mdate: "2024-06-03",
        mtime: "12:00:00"),
    ItemModel(
        id: 17,
        pid: 6,
        product: "THB",
        productType: 2,
        sellPrice: "115",
        buyPrice: "111",
        mdate: "2024-06-03",
        mtime: "12:00:00"),
    ItemModel(
        id: 14,
        pid: 5,
        product: "CNY",
        productType: 2,
        sellPrice: "580",
        buyPrice: "565",
        mdate: "2024-06-03",
        mtime: "12:00:00"),
    ItemModel(
        id: 11,
        pid: 4,
        product: "SGB",
        productType: 2,
        sellPrice: "3090",
        buyPrice: "3000",
        mdate: "2024-06-03",
        mtime: "12:00:00"),
    ItemModel(
        id: 8,
        pid: 3,
        product: "USD",
        productType: 2,
        sellPrice: "4300",
        buyPrice: "4200",
        mdate: "2024-06-03",
        mtime: "12:00:00"),
    ItemModel(
        id: 5,
        pid: 2,
        product: "World Gold",
        productType: 1,
        sellPrice: "2320",
        buyPrice: "2320",
        mdate: "2024-06-03",
        mtime: "12:00:00"),
    ItemModel(
        id: 16,
        pid: 6,
        product: "THB",
        productType: 2,
        sellPrice: "116",
        buyPrice: "112",
        mdate: "2024-06-01",
        mtime: "12:00:00"),
    ItemModel(
        id: 19,
        pid: 7,
        product: "92 RON",
        productType: 3,
        sellPrice: "2565",
        buyPrice: "2565",
        mdate: "2024-06-01",
        mtime: "12:00:00"),
    ItemModel(
        id: 13,
        pid: 5,
        product: "CNY",
        productType: 2,
        sellPrice: "565",
        buyPrice: "555",
        mdate: "2024-06-01",
        mtime: "12:00:00"),
    ItemModel(
        id: 22,
        pid: 8,
        product: "95 RON",
        productType: 3,
        sellPrice: "2665",
        buyPrice: "2665",
        mdate: "2024-06-01",
        mtime: "12:00:00"),
    ItemModel(
        id: 10,
        pid: 4,
        product: "SGB",
        productType: 2,
        sellPrice: "3000",
        buyPrice: "2950",
        mdate: "2024-06-01",
        mtime: "12:00:00"),
    ItemModel(
        id: 25,
        pid: 9,
        product: "Diesel",
        productType: 3,
        sellPrice: "2330",
        buyPrice: "2330",
        mdate: "2024-06-01",
        mtime: "12:00:00"),
    ItemModel(
        id: 7,
        pid: 3,
        product: "USD",
        productType: 2,
        sellPrice: "4500",
        buyPrice: "4400",
        mdate: "2024-06-01",
        mtime: "12:00:00"),
    ItemModel(
        id: 28,
        pid: 10,
        product: "Premier Diesel",
        productType: 3,
        sellPrice: "2380",
        buyPrice: "2380",
        mdate: "2024-06-01",
        mtime: "12:00:00"),
    ItemModel(
        id: 4,
        pid: 2,
        product: "World Gold",
        productType: 1,
        sellPrice: "2320",
        buyPrice: "2320",
        mdate: "2024-06-01",
        mtime: "12:00:00"),
    ItemModel(
        id: 1,
        pid: 1,
        product: "Gold Bar (16)",
        productType: 1,
        sellPrice: "5270000",
        buyPrice: "5220000",
        mdate: "2024-06-01",
        mtime: "12:00:00")
  ];
}

void main() {
  late AppRepositoryImpl appRepository;

  setUp(() {
    appRepository = AppRepositoryImpl();
    appRepository.setService(MockApiService());
  });

  test("emit a matcher for api service", () async {
    List<ItemModel> actualItemList = await appRepository.fetchItem();
    expect(actualItemList, equals(matcherItemList()));
  });
}

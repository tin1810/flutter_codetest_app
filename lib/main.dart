import 'package:flutter/material.dart';
import 'package:flutter_code_test_application/data/models/item_model.dart';
import 'package:flutter_code_test_application/presentation/pages/item_list.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();

  Hive.registerAdapter(ItemModelAdapter());
  await Hive.openBox<ItemModel>("Box_Name_ItemModel");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Item Screen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ItemListScreen(),
    );
  }
}

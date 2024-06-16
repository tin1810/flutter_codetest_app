import 'package:flutter/material.dart';
import 'package:flutter_code_test_application/app/config/app_text_style.dart';
import 'package:flutter_code_test_application/presentation/controller/app_controller.dart';
import 'package:flutter_code_test_application/presentation/widgets/loading_widget.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

class ItemListScreen extends StatefulWidget {
  const ItemListScreen({super.key});

  @override
  State<ItemListScreen> createState() => _ItemListScreenState();
}

class _ItemListScreenState extends State<ItemListScreen> {
  final AppController appController = Get.put(AppController());
  @override
  void initState() {
    appController.fetchProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          elevation: 0.5,
          centerTitle: true,
          title: Text(
            "Item Lists",
            style: AppTextStyle.h5Bold.copyWith(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: GetBuilder<AppController>(builder: (controller) {
          return controller.isLoading == true
              ? const LoadingWidget()
              : ListView.builder(
                  itemCount: controller.itemLists.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 4),
                      child: ListTile(
                        tileColor: Colors.lightBlue.withOpacity(0.1),
                        title: Text(
                          controller.itemLists[index].product ?? "",
                          style: AppTextStyle.h5Bold
                              .copyWith(color: Colors.orange),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sell Price: ${controller.itemLists[index].buyPrice ?? ''}',
                              style: AppTextStyle.h5Medium
                                  .copyWith(color: Colors.green),
                            ),
                            Text(
                              'Buy Price: ${controller.itemLists[index].buyPrice ?? ''}',
                              style: AppTextStyle.h5Medium
                                  .copyWith(color: Colors.black54),
                            ),
                          ],
                        ),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Time: ${controller.itemLists[index].buyPrice ?? ''}',
                              style: AppTextStyle.h6Regular
                                  .copyWith(color: Colors.black87),
                            ),
                            Text(
                              'Date : ${controller.itemLists[index].mdate ?? ''}',
                              style: AppTextStyle.h6Regular
                                  .copyWith(color: Colors.black87),
                            ),
                          ],
                        ),
                      ),
                    );
                  });
        }));
  }
}

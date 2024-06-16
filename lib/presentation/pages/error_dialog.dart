import 'package:flutter/material.dart';
import 'package:get/get.dart';

showErrorDialog(
  String message,
) {
  Get.defaultDialog(
      title: message,
      backgroundColor: Colors.black,
      titleStyle: TextStyle(color: Colors.black),
      textConfirm: "Confirm",
      textCancel: "Cancel",
      cancelTextColor: Colors.white,
      confirmTextColor: Colors.white,
      buttonColor: Colors.red,
      barrierDismissible: false,
      radius: 50,
      content: Text("Error"));
}

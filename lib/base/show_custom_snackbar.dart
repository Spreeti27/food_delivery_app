import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:stock_app/widgets/big-text.dart';

void showCustomSnackbar(String message, {bool isError=true,String title="Error"}){
  Get.snackbar(title, message,
  titleText: BigText(text: title,color: Colors.white,),
  messageText: Text(message,style: const TextStyle(
    color: Colors.white,
  ),),
  colorText: Colors.white,
  snackPosition: SnackPosition.TOP,
  backgroundColor: Colors.redAccent);

}
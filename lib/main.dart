import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:stock_app/controllers/cart_controller.dart';
import 'package:stock_app/controllers/popular_product_controller.dart';
import 'package:stock_app/pages/auth/sign_in_page.dart';
import 'package:stock_app/pages/auth/sign_up_page.dart';
import 'package:stock_app/pages/cart/cart_page.dart';
import 'package:stock_app/pages/food/popular_food_detail.dart';
import 'package:stock_app/pages/food/recommended_food_detail.dart';
import 'package:stock_app/pages/home/food_page_body.dart';
import 'package:stock_app/pages/splash/splash_page.dart';
import 'package:stock_app/routes/route_helper.dart';
import 'controllers/recommended_product_controller.dart';
import 'helper/dependencies.dart'as dep;
import 'package:stock_app/pages/home/main_food_page.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Get.find<PopularProductController>().getPopularProductList();
    // Get.find<RecommendedProductController>().getRecommendedProductList();
Get.find<CartController>().getCartData();
   return GetBuilder<PopularProductController>(builder: (_){
     return GetBuilder<RecommendedProductController>(builder: (_){
       return const GetMaterialApp(
         debugShowCheckedModeBanner: false,
         title: "Food App",
         home: SignUpPage(),
         // initialRoute: RouteHelper.getSplashPage(),
         // getPages: RouteHelper.routes,
       );

     });
   },);
  }
}


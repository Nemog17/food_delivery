import 'package:flutter/material.dart';
import 'package:del_colmado_rd/controllers/cart_controller.dart';
import 'package:del_colmado_rd/controllers/popular_product_controller.dart';
import 'package:del_colmado_rd/controllers/recommended_product_controller.dart';
import 'package:del_colmado_rd/presentation/auth/sign_in_page.dart';
import 'package:del_colmado_rd/presentation/auth/sign_up_page.dart';
import 'package:del_colmado_rd/presentation/home/home_page.dart';
import 'package:del_colmado_rd/routes/router_helper.dart';
import 'package:del_colmado_rd/core/constants.dart';
import 'package:get/get.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'helper/dependeccies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get.find<CartController>().getCartData();
    return GetBuilder<PopularProductController>(builder: (_) {
      return GetBuilder<RecommendedProductController>(builder: (_) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: AppConstants.appName,
          home: HomePage(),
          // initialRoute: RouteHelper.getInitial(),
          // home: SplashScreen(),
          initialRoute: RouteHelper.getSplashPage(),
          getPages: RouteHelper.routes,
        );
      });
    });
  }
}

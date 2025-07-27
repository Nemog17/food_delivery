import 'package:del_colmado_rd/controllers/cart_controller.dart';
import 'package:del_colmado_rd/controllers/location_controller.dart';
import 'package:del_colmado_rd/controllers/popular_product_controller.dart';
import 'package:del_colmado_rd/controllers/recommended_product_controller.dart';
import 'package:del_colmado_rd/controllers/user_controller.dart';
import 'package:del_colmado_rd/data/api/api_client.dart';
import 'package:del_colmado_rd/data/repository/auth_repo.dart';
import 'package:del_colmado_rd/data/repository/cart_repo.dart';
import 'package:del_colmado_rd/data/repository/loaction_repo.dart';
import 'package:del_colmado_rd/data/repository/popular_product_repo.dart';
import 'package:del_colmado_rd/data/repository/recomended_product_repo.dart';
import 'package:del_colmado_rd/controllers/auth_controller.dart';
import 'package:del_colmado_rd/data/repository/user_repo.dart';
import 'package:del_colmado_rd/utils/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';

Future<void> init() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  Get.lazyPut(() => sharedPreferences);
  // api client
  Get.lazyPut(() => ApiClent(appBaseUrl: AppConstants.BASE_URL, sharedPreferences: Get.find()));
  Get.lazyPut(() => AuthRepo(apiClent: Get.find(), sharedPreferences: Get.find()));
  Get.lazyPut(() => UserRepo(apiClent: Get.find()));

  //repos
  Get.lazyPut(() => PopularProductRepo(apiClent: Get.find()));
  Get.lazyPut(() => RecommendedProductRepo(apiClent: Get.find()));
  Get.lazyPut(() => CartRepo(sharedPreferences: Get.find()));
  Get.lazyPut(() => LocationRepo(apiClent: Get.find(), sharedPreferences: Get.find()));

  //controller
  Get.lazyPut(() => AuthController(authRepo: Get.find()));
  Get.lazyPut(() => UserController(userRepo: Get.find()));
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  Get.lazyPut(() => RecommendedProductController(recommendedProductRepo: Get.find()));
  Get.lazyPut(() => CartController(cartRepo: Get.find()));
  Get.lazyPut(() => LocationController(locationRepo: Get.find()));
}

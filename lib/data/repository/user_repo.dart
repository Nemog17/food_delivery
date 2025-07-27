import 'package:del_colmado_rd/data/api/api_client.dart';
import 'package:del_colmado_rd/utils/app_constants.dart';
import 'package:get/get.dart';

class UserRepo {
  final ApiClent apiClent;
  UserRepo({required this.apiClent});

  Future<Response> getUserInfo() async {
    return await apiClent.getData(AppConstants.USER_INFO_URI);
  }
}

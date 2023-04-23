import 'package:fluttermvvm/core/data_models/users_data_model.dart';
import 'package:fluttermvvm/core/services/http_service/dio_http_service.dart';
import '../utils/constants/endpoints_rest_api.dart';

class HomeModel {
  Future<UsersDataModel> getUsers() async {
    var res = await httpService.get(endPoint: AppEndPoints.users);

    return UsersDataModel.fromJson(res.data);
  }
}

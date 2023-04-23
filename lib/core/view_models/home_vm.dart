import 'dart:developer';

import 'package:fluttermvvm/core/data_models/users_data_model.dart';
import 'package:fluttermvvm/core/models/home_model.dart';
import 'package:fluttermvvm/core/utils/exports/app_material.dart';

class HomeViewModel extends ChangeNotifier {
  final HomeModel _homeModel = HomeModel();

  UsersDataModel usersDataModel = UsersDataModel();

  void getUsers() async {
    usersDataModel = await _homeModel.getUsers();
    log("users data = ${usersDataModel.toJson()}");
    notifyListeners();
  }
}

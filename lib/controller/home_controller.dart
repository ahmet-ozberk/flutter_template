import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/model/base_model.dart';
import 'package:flutter_template/services/api_services.dart';

final homeApiDataController = FutureProvider.autoDispose((ref) => ApiServices.request(
    url: 'home', fromJson: (json) => BaseModel.fromMap(json), type: ApiType.GET));

final homeLocationController =
    ChangeNotifierProvider.autoDispose((ref) => HomeLocationController());

class HomeLocationController extends ChangeNotifier {
  bool isLoaing = false;
  bool isError = false;

  void setLocation() {
    ApiServices.request(
        url: 'home/location',
        data: {},
        type: ApiType.POST,
        statusListener: (loading, error) {
          isLoaing = loading;
          isError = error;
          notifyListeners();
        });
  }
}

// ignore_for_file: constant_identifier_names
import 'package:dio/dio.dart';
import 'package:flutter_template/services/local_storage_service.dart';
import 'package:flutter_template/services/navigation_service.dart';

import '../model/base_model.dart';

typedef FromJson<T> = T Function(Map<String, dynamic> json);

class ApiServices {
  static const ApiUrl API_URL = ApiUrl.live;
  static const String POSTS = "/posts";
  static const String COMMENTS = "/comments";
  static const String ALBUMS = "/albums";
  static const String PHOTOS = "/photos";
  static const String TODOS = "/todos";
  static const String USERS = "/users";

  static final dio = Dio(
    BaseOptions(
      baseUrl: API_URL.url,
      headers: {
        "Content-Type": "application/json",
        "Authorization": LocalStorageService.token() != null
            ? "Bearer ${LocalStorageService.token() ?? ""}"
            : null,
      },
    ),
  );

  static bool isAuth(){
    final token = LocalStorageService.token();
    return token != null && token.isNotEmpty;
  }

  static Future request(
      {required String url,
      ApiType type = ApiType.GET,
      FromJson? fromJson,
      void Function(bool loading, bool error)? statusListener,
      dynamic data}) async {
    if (NavigationService.context.mounted) {
      statusListener?.call(true, false);
    }
    try {
      late final Response response;
      switch (type) {
        case ApiType.GET:
          response = await dio.get(url);
          break;
        case ApiType.POST:
          response = await dio.post(url, data: data);
          break;
        case ApiType.PUT:
          response = await dio.put(url, data: data);
          break;
        case ApiType.DELETE:
          response = await dio.delete(url);
          break;
      }
      if (response.statusCode == 200) {
        if (response.data['status'] == true) {
          if (fromJson != null) {
            statusListener?.call(false, false);
            return fromJson(response.data);
          } else {
            statusListener?.call(false, false);
            return BaseModel.fromJson(response.data);
          }
        } else {
          statusListener?.call(false, true);
          throw "Hata: ${response.data['message']}";
        }
      } else {
        statusListener?.call(false, true);
        throw "Hata kodu: ${response.statusCode}\nHata mesajı: ${response.statusMessage}";
      }
    } on DioError catch (e) {
      var response = e.response;
      statusListener?.call(false, true);
      throw "Hata kodu: ${response?.statusCode}\nHata mesajı: ${response?.statusMessage}";
    } catch (e) {
      statusListener?.call(false, true);
      rethrow;
    }
  }
}

enum ApiUrl {
  live("https://jsonplaceholder.typicode.com"),
  test("https://test.jsonplaceholder.typicode.com");

  final String url;
  const ApiUrl(this.url);
}

enum ApiType {
  GET,
  POST,
  PUT,
  DELETE,
}

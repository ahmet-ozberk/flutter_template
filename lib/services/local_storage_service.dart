import 'package:get_storage/get_storage.dart';

class LocalStorageService {
  /// SecureStorage package is used to store sensitive data
  static int? userId() => GetStorage().read("userId");
  static void setUserId(int? value) => GetStorage().write("userId", value);

  static String? token() => GetStorage().read("token");
  static void setToken(String? value) => GetStorage().write("token", value);

  static String? username() => GetStorage().read("username");
  static void setUsername(String? value) => GetStorage().write("username", value);
}

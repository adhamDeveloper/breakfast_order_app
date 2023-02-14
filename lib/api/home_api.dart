import 'dart:convert';
import 'dart:developer';
import 'package:breackfast/model/model_home.dart';
import 'package:breackfast/utilities/const.dart';
import 'package:breackfast/utilities/shared_preferences.dart';
import 'package:http/http.dart' as http;

class HomeApi {
  Future<ModelHome> homeApi() async {
    String token = await getPrefString('token');
    try {
      final response = await http.get(
        "$baseUrl/home",
        headers: {
          "Accept": "application/json",
          "Authorization": "Bearer $token"
        },
      );
      log("$baseUrl/home");
      log('Bearer $token');
      log('res=>${response.body}');
      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        ModelHome model = ModelHome.fromJson(data);
        return model;
      } else {
        return null;
      }
    } catch (e) {
      log('error=>$e');
      return null;
    }
  }
}

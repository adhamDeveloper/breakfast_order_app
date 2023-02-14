import 'dart:convert';
import 'dart:developer';
import 'package:breackfast/model/model_menu_restaurant.dart';
import 'package:breackfast/utilities/const.dart';
import 'package:breackfast/utilities/shared_preferences.dart';
import 'package:http/http.dart' as http;

class MenuApi {
  Future<ModelMenu> menuApi(int id) async {
    String token = await getPrefString('token');
    try {
      final response = await http.get(
        "$baseUrl/restaurants/$id/menu" ,
        headers: {
          "Accept": "application/json",
          "Authorization": "Bearer $token"
        },
      );
      log("$baseUrl/menu");
      log('Bearer $token');
      log('res=>${response.body}');
      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        ModelMenu model = ModelMenu.fromJson(data);
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

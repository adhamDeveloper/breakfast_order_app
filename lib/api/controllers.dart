import 'dart:convert';
import 'dart:developer';
import 'package:breackfast/model/model_login.dart';
import 'package:breackfast/model/model_signUp.dart';
import 'package:breackfast/utilities/const.dart';
import 'package:breackfast/utilities/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class DatabaseHelperss {


  // Create Account

  Future<ModelSignUp> CreateAccounts(
      {String name, String email, String password, String phoneNumber}) async {
    try {
      Map<String, String> data = {
        "name": "$name",
        "email": "$email",
        "password": "$password",
        "phone_number": "$phoneNumber",
      };

      final response = await http.post('$baseUrl/register',
          headers: {"Accept": "application/json"}, body: data);
      print(data);

      log('res=>${response.body}');
      log('res=>${response.statusCode}');

      var dataDecode = json.decode(response.body);

      ModelSignUp model = ModelSignUp.fromJson(dataDecode);
      print(model.token);

      return model;
    } catch (e) {
      log('error=>$e');
      return null;
    }
  }

  // Login
  Future<LoginModel> LoginAccounts(
      {String password, String phoneNumber}) async {
    try {
      Map<String, String> mapsLogins = {
        "phone_number": "$phoneNumber",
        "password": "$password",
      };
      final response = await http.post("$baseUrl/login",
          headers: {"Accept": "application/json"}, body: mapsLogins);
      log('res => ${response.body}');
      log('res => ${response.statusCode}');

      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        LoginModel model = LoginModel.fromJson(data);
        //_save(model.token);
        await savePrefString('token', model.token);
        return model;
      } else {
        return null;
      }
    } catch (e) {
      log('error=>$e');
      return null;
    }
  }

/*  // Save Shared Preferences
  _save(String value) async {
    final prefs = await SharedPreferences.getInstance();
    final key = "token";
    prefs.setString(key, value);
  }*/
}

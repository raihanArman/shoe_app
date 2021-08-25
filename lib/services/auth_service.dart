import 'dart:convert';

import 'package:shoe_app/models/user_model.dart';
import 'package:http/http.dart' as http;

class AuthService {
  String baseUrl = "http://192.168.0.5:8000/api";

  Future<UserModel> register(
      {String? name, String? username, String? email, String? password}) async {
    var url = Uri.parse("$baseUrl/register");
    var body = ({
      'name': name,
      'username': username,
      'email': email,
      'password': password
    });

    var response = await http.post(url, body: body);

    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      UserModel user = UserModel.fromJson(data['user']);
      user.token = 'Bearer ' + data['access_token'];

      return user;
    } else {
      throw Exception('Gagal register');
    }
  }
}

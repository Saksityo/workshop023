import 'package:http/http.dart' as http;
import 'dart:async';

class ApiProvider {
  ApiProvider();

  String endPoint = 'http://127.0.0.1:3000';

  Future<http.Response> doLogin(String username, String password) async {
    String url = '$endPoint/login';
    var body = {
      "username" : username,
      "password" : password
    };

    return await http.post(Uri.parse(url), body: body);
  }
}

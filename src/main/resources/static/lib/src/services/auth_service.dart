import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:angular/core.dart';
import 'package:templates/src/objects/LoginBody.dart';
import 'package:templates/src/objects/RegisterBody.dart';

@Injectable()
class AuthService {
  Future<String> register(RegisterBody body) async {
    var res = await http.post('/auth/register',
        body: json.encode({
          'username': body.username,
          'email': body.email,
          'password': body.password,
          'confirmPassword': body.confirmPassword,
        }),
        headers: {
          'Content-type': 'application/json',
          'Accept': 'application/json',
        });

    var resJson = json.decode(res.body);
    return resJson['username'];
  }

  Future<String> login(LoginBody body) async {
    var payload = {"username": body.username, "password": body.password};
    var res = await http.post("/auth/login",
        headers: {
          'Content-type': 'application/json',
          'Accept': 'application/json',
        },
        body: json.encode(payload));
    var resJson = json.decode(res.body);
    return resJson["username"];
  }
}

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class AuthProvider extends ChangeNotifier {
  String _token = '';
  int _expires = 0;

  bool get isAuth {
    return _token.isNotEmpty;
  }

  Future<void> _authentication(
      String email, String password, String type) async {
    const url = 'https://apiforlearning.zendvn.com/api/auth/login';
    try {
      final respone = await http.post(
        Uri.parse(url),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
          {"email": email, "password": password},
        ),
      );
      final responeData = jsonDecode(respone.body);
      _token = responeData['access_token'];
      _expires = responeData['expires_in'];
      notifyListeners();
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final userData = jsonEncode({'token': _token, 'expires': _expires});
      await prefs.setString('userData', userData);
    } catch (e) {
      print(e);
    }
  }

  void login(String email, String password) {
    _authentication(email, password, 'login');
  }

  void logout() async {
    _token = '';
    _expires = 0;
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('userData');
    notifyListeners();
  }

  Future<bool> autoLogin() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (!prefs.containsKey('userData')) {
      return false;
    }
    final userData = jsonDecode(prefs.getString('userData') ?? '{}');
    _token = userData['token'];
    _expires = userData['expires'];
    notifyListeners();
    return true;
  }
}

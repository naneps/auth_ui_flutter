import 'package:auth_ui_flutter/data/dumy.dart';
import 'package:flutter/material.dart';

class AuthController {
  final TextEditingController teleponeController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  Future<bool>? login({required String? telepon, required String? pasword}) {
    for (var item in dataUsers) {
      if (item['telepon'] == telepon && item['password'] == pasword) {
        return Future.value(true);
      } else {
        return Future.value(false);
      }
    }
  }
}

import 'package:auth_ui_flutter/page/constant.dart';
import 'package:auth_ui_flutter/page/hak_akses_page.dart';
import 'package:auth_ui_flutter/page/login_page.dart';
import 'package:auth_ui_flutter/page/resgister_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.amber),
        home: RegisterPage());
  }
}

import 'package:auth_ui_flutter/page/root_app.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings setting) {
  final Map<String, dynamic> args = <String, dynamic>{};

  switch (setting.name) {
    case '/root_app':
      return MaterialPageRoute(builder: (context) => const RootApp());
    case '/today_target_detail':
    // return MaterialPageRoute(
    //     builder: (context) => const TodayTargetDetailPage());
    default:
      return MaterialPageRoute(
          builder: (context) => const Scaffold(
                body: Center(),
              ));
  }
}

import 'package:auth_ui_flutter/page/constant.dart';
import 'package:flutter/material.dart';

class WidgetAvatar extends StatelessWidget {
  const WidgetAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        child: CircleAvatar(
          backgroundColor: kMainColor,
          radius: 55,
          child: const CircleAvatar(
            radius: 50,
            backgroundColor: Color.fromARGB(255, 61, 235, 67),
          ),
        ),
      ),
      Positioned(
          bottom: 10,
          right: 12,
          child: Icon(
            Icons.camera_enhance,
            color: Colors.white,
          ))
    ]);
  }
}

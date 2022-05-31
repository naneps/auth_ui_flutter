import 'dart:math';

import 'package:auth_ui_flutter/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/widget_awvat.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isNotEdit = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            WidgetAvatar(),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              hintText: "Namanya Siapa",
              readOnly: isNotEdit,
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              hintText: "Rumahnya Dimana",
              readOnly: isNotEdit,
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              hintText: "Nomornya Berapa",
              readOnly: isNotEdit,
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              hintText: "Namanya Siapa",
              readOnly: isNotEdit,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      isNotEdit = false;
                    });
                  },
                  child: Text(
                    "Edit",
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("Edit"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Edit() {
    setState(() {
      !isNotEdit;
    });
  }
}

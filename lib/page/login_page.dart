import 'package:auth_ui_flutter/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Masuk",
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 30),
            CustomTextField(
              icon: Icons.phone,
              hintText: "Telepon",
              labelText: "Telepon",
            ),
            SizedBox(height: 30),
            CustomTextField(
              icon: Icons.lock,
              suffIcon: Icon(Icons.visibility),
              hintText: "Kata Sandi",
              labelText: "Kata Sandi",
            ),
          ],
        ),
      ),
    );
  }
}

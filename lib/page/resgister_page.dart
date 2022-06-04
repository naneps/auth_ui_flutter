import 'package:auth_ui_flutter/page/constant.dart';
import 'package:auth_ui_flutter/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Register",
              style: GoogleFonts.poppins(
                  color: kFontColor, fontSize: 26, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 20),
            CustomTextField(
              labelText: "Nama Lengkap",
              hintText: "Masukkan Nama Lengkap",
            ),
            SizedBox(height: 20),
            CustomTextField(
              labelText: "Email",
              hintText: "Masukkan Email",
            ),
            SizedBox(height: 20),
            CustomTextField(
              labelText: "Password",
              hintText: "Masukkan Password",
              obscureText: true,
            ),
            SizedBox(height: 20),
            CustomTextField(
              labelText: "Konfirmasi Password",
              hintText: "Masukkan Password",
              obscureText: true,
            ),
            SizedBox(height: 20),
            TextButton(
                onPressed: () {},
                child: Container(
                  decoration: BoxDecoration(
                    color: kMainColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 50,
                  child: Text(
                    "Sign Up!!",
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

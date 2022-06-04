import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auth_ui_flutter/controllers/auth_controller.dart';
import 'package:auth_ui_flutter/page/constant.dart';
import 'package:auth_ui_flutter/page/profile_screen.dart';
import 'package:auth_ui_flutter/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'ddlog.dart';
import 'package:flutter/foundation.dart';
import 'package:enhance_stepper/enhance_stepper.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final StepperType _type = StepperType.vertical;
  bool showPass = true;
  AuthController authController = AuthController();
  int groupValue = 0;
  var selectedHakakses;
  // List<Tuple2> tuples = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 150,
              child: AnimatedTextKit(
                // totalRepeatCount: 10,
                repeatForever: true,
                animatedTexts: [
                  TyperAnimatedText(
                    'Selamat datang di Rumah Tahfidz Qur"an',
                    textStyle: GoogleFonts.poppins(
                      color: kFontColor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                    curve: Curves.linearToEaseOut,
                  )
                  // speed: Duration(seconds: 3)),
                ],
                onTap: () {
                  print("Tap Event");
                },
              ),
            ),
            //
            const SizedBox(height: 50),
            Text(
              "Masuk",
              style: GoogleFonts.poppins(
                  color: kFontColor, fontSize: 26, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 30),
            CustomTextField(
              controller: authController.teleponeController,
              inputType: TextInputType.phone,
              icon: Icons.phone,
              hintText: "Telepon",
              labelText: "Telepon",
            ),
            const SizedBox(height: 30),
            CustomTextField(
              controller: authController.passwordController,
              obscureText: showPass,
              icon: Icons.lock,
              suffIcon: IconButton(
                icon:
                    Icon((showPass ? Icons.visibility_off : Icons.visibility)),
                onPressed: () {
                  setState(() {
                    showPass = !showPass;
                  });
                },
              ),
              hintText: "Kata Sandi",
              labelText: "Kata Sandi",
            ),
            const SizedBox(height: 30),
            const SizedBox(height: 20),
            TextButton(
                onPressed: () {
                  // print(authController.teleponeController.text);
                  authController
                      .login(
                          telepon: authController.teleponeController.text,
                          pasword: authController.passwordController.text)
                      ?.then((value) {
                    print(value);
                    if (value) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProfilePage(),
                          ));
                    }
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: kMainColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 50,
                  child: Text(
                    "Masuk!",
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

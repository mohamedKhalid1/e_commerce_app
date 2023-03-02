import 'package:e_commerce_app/views/screens/authentication/enter_verification_code_screen.dart';
import 'package:e_commerce_app/views/widgets/authentication/auth_body_widget.dart';
import 'package:flutter/material.dart';

import '../../widgets/authentication/textField_auth.dart';

class EnterPasswordScreen extends StatelessWidget {
  EnterPasswordScreen({Key? key}) : super(key: key);
  static const String route = "enterPasswordScreen";
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBodyWidget(
        text1: "Enter the password",
        text2:
            "It looks like you already have an account in this \nnumber. Please enter the password to proceed",
        buttonText: "Submit",
        imgOrStack: Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BackButtonIcon(),
              Image.asset(
                "assets/images/authentication/enter_password_photo.png",
                height: MediaQuery.of(context).size.height * 0.33,
                width: double.infinity,
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
        function: () {
          Navigator.pushReplacementNamed(
              context, EnterVerificationCodeScreen.route);
        },
        textFieldAndOthers: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFieldAuth(
              textHint: "Password",
              prefixIconWidget: const Icon(Icons.lock_clock_outlined),
              textInputType: TextInputType.visiblePassword,
              controller: passwordController,
              maxLength: 20,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Forgot password?",
              style: TextStyle(color: Colors.blue),
            )
          ],
        ),
      ),
    );
  }
}

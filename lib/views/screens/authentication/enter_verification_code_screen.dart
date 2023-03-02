import 'package:e_commerce_app/views/screens/authentication/your_information_screen.dart';
import 'package:e_commerce_app/views/widgets/authentication/auth_body_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class EnterVerificationCodeScreen extends StatelessWidget {
  EnterVerificationCodeScreen({super.key});

  static const String route = "enterVerificationCodeScreen";
  final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AuthBodyWidget(
            text1: "Enter Verification Code",
            text2: "We have sent SMS to:\n01XXXXXXXXXX",
            buttonText: "Next",
            function: () {
              // PhoneAuthCredential credential = PhoneAuthProvider.credential(
              //     verificationId: verificationId, smsCode: "smsCode");

              Navigator.pushNamed(context, YourInformationScreen.route);
            },
            imgOrStack: Stack(alignment: Alignment.center, children: [
              Image.asset(
                "assets/images/authentication/enter_phone_number.png",
                height: MediaQuery.of(context).size.height * 0.5,
              ),
              Image.asset(
                "assets/images/pageview/logo.png",
                height: 120,
                width: 120,
              ),
            ]),
            textFieldAndOthers: TextField()));
  }
}

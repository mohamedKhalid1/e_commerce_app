import 'package:e_commerce_app/views/widgets/authentication/auth_body_widget.dart';
import 'package:e_commerce_app/views/widgets/authentication/textField_auth.dart';
import 'package:flutter/material.dart';

class EnterPhoneNumberScreen extends StatelessWidget {
  EnterPhoneNumberScreen({Key? key}) : super(key: key);
  static const String route = "enterPhoneNumberScreen";
  final TextEditingController phoneNumberController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AuthBodyWidget(
            text1: "Enter your mobile number",
            text2:
                "We need to verify you. We will send you a one \ntime verification code. ",
            imgOrStack: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Stack(alignment: Alignment.center, children: [
                Image.asset(
                  "assets/images/authentication/enter_phone_number.png",
                  height: MediaQuery.of(context).size.height * 0.46,
                ),
                Image.asset(
                  "assets/images/pageview/logo.png",
                  height: 120,
                  width: 120,
                ),
              ]),
            ),
            buttonText: "Next",
            function: () {
               // await FirebaseAuth.instance.verifyPhoneNumber(
               //   phoneNumber: '+201113822630',
               //   verificationCompleted: (PhoneAuthCredential credential) {},
               //   verificationFailed: (FirebaseAuthException e) {},
               //   codeSent: (String verificationId, int? resendToken) {
               //     Navigator.of(context).push(PageRouteBuilder(pageBuilder: (_,__,___) =>  EnterVerificationCodeScreen(
               //         verificationId:verificationId)));
               //   },
               //   codeAutoRetrievalTimeout: (String verificationId) {},
               // );

            },
            textFieldAndOthers: TextFieldAuth(
              textHint: "Phone Number",
              prefixIconWidget: const Icon(Icons.phone),
              textInputType: TextInputType.phone, controller: phoneNumberController, maxLength: 10,
            )));
  }
}

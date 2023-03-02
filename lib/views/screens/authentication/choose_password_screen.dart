import 'package:e_commerce_app/views/screens/authentication/enter_phone_number_screen.dart';
import 'package:e_commerce_app/views/widgets/authentication/textField_auth.dart';
import 'package:flutter/material.dart';

class ChoosePasswordScreen extends StatelessWidget {
  ChoosePasswordScreen({Key? key}) : super(key: key);
  static const String route = "choosePasswordScreen";
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          "Choose a Password",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              Text(
                "For the security & safety please choose a \npassword",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                  child: Image.asset(
                "assets/images/authentication/choose_password_photo.png",
                height: MediaQuery.of(context).size.height * 0.35,
              )),
              const SizedBox(
                height: 10,
              ),
              TextFieldAuth(
                textHint: "Password",
                prefixIconWidget: const Icon(Icons.lock_clock_outlined),
                textInputType: TextInputType.visiblePassword,
                controller: passwordController,
                maxLength: 20,
              ),
              const SizedBox(
                height: 10,
              ),
              TextFieldAuth(
                textInputType: TextInputType.visiblePassword,
                textHint: "Confirm Password",
                prefixIconWidget: const Icon(Icons.lock_clock_outlined),
                controller: confirmPasswordController,
                maxLength: 20,
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, EnterPhoneNumberScreen.route);
                },
                child: Container(
                    width: 380,
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFFFC107)),
                    child: Row(
                      children: const [
                        Expanded(
                          child: Text(
                            "Finish, Good to go",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Icon(Icons.arrow_forward_outlined,
                            color: Colors.white),
                        SizedBox(width: 5)
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

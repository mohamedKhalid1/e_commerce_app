import 'package:e_commerce_app/views/screens/authentication/choose_password_screen.dart';
import 'package:e_commerce_app/views/widgets/authentication/textField_auth.dart';
import 'package:flutter/material.dart';

class YourInformationScreen extends StatelessWidget {
  YourInformationScreen({Key? key}) : super(key: key);
  static const String route = "yourInformationScreen";
  final TextEditingController fullNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          "Your Information",
          style: Theme.of(context).textTheme.bodyLarge,
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
                height: 30,
              ),
              Text(
                "It looks like you don’t have account in this \nnumber. Please let us know some information for \na scure service",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Center(
                    child: Image.asset(
                  "assets/images/authentication/camera_photo.png",
                  height: MediaQuery.of(context).size.height * 0.15,
                )),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: const Color(0xFF236CD9),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Sync From Facebook",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: Colors.white),
                    ),
                    const SizedBox(width: 120),
                    Image.asset(
                      "assets/images/authentication/facebook_logo.png",
                      height: 17,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              TextFieldAuth(
                textHint: "Full Name",
                prefixIconWidget: const Icon(Icons.account_circle_outlined),
                textInputType: TextInputType.name,
                controller: fullNameController,
                maxLength: 25,
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.165),
                child:InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, ChoosePasswordScreen.route);
                  },
                  child: Container(
                      width: 380,
                      height: 60,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: const Color(0xFFFFC107)),
                      child:
                      Row(
                        children:const [
                          Expanded(
                            child: Text(
                              "Next",
                              style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Icon(Icons.arrow_forward_outlined,color: Colors.white),
                          SizedBox(width: 5)
                        ],
                      )
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

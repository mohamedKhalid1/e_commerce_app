import 'package:e_commerce_app/views/screens/authentication/choose_password_screen.dart';
import 'package:e_commerce_app/views/screens/authentication/enter_password_screen.dart';
import 'package:e_commerce_app/views/screens/authentication/enter_phone_number_screen.dart';
import 'package:e_commerce_app/views/screens/authentication/enter_verification_code_screen.dart';
import 'package:e_commerce_app/views/screens/authentication/your_information_screen.dart';
import 'package:e_commerce_app/views/screens/main_screens/main_screen.dart';
import 'package:e_commerce_app/views/screens/pageView_screens/pageView_1.dart';
import 'package:e_commerce_app/views/screens/pageView_screens/pageView_2.dart';
import 'package:e_commerce_app/views/screens/pageView_screens/pageView_3.dart';
import 'package:e_commerce_app/views/screens/pageView_screens/pageView_4.dart';
import 'package:e_commerce_app/views/widgets/pageView/test.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // status bar color
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
            titleLarge: TextStyle(
                fontFamily: 'Poppins',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
                fontSize: 30),
            bodyLarge: TextStyle(
                fontFamily: 'Poppins',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
                fontSize: 20),
            bodyMedium: TextStyle(
                color: Color.fromRGBO(55, 71, 79, 0.72),
                fontFamily: 'Poppins',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                fontSize: 14)),
      ),
      routes: {
        PageView1.route: (context) => const PageView1(),
        PageView2.route: (context) => const PageView2(),
        PageView3.route: (context) => const PageView3(),
        PageView4.route: (context) => const PageView4(),
        Test.route: (context) => Test(),
        EnterPhoneNumberScreen.route: (context) => EnterPhoneNumberScreen(),
        EnterPasswordScreen.route: (context) => EnterPasswordScreen(),
        YourInformationScreen.route: (context) => YourInformationScreen(),
        ChoosePasswordScreen.route: (context) => ChoosePasswordScreen(),
        EnterVerificationCodeScreen.route: (context) =>
            EnterVerificationCodeScreen(),
        MainScreen.route: (context) => const MainScreen(),
      },
      initialRoute: EnterVerificationCodeScreen.route,
    );
  }
}

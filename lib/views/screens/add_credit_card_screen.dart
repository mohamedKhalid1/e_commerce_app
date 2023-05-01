import 'package:flutter/material.dart';

class AddCreditCardScreen extends StatefulWidget {
  const AddCreditCardScreen({Key? key}) : super(key: key);
  static const String route = "addCreditCardScreen";

  @override
  State<AddCreditCardScreen> createState() => _AddCreditCardScreenState();
}

class _AddCreditCardScreenState extends State<AddCreditCardScreen> {
  final formKey = GlobalKey<FormState>();

  final TextEditingController cardName = TextEditingController();

  final TextEditingController cardNumber = TextEditingController();

  final TextEditingController date = TextEditingController();

  final TextEditingController cvv = TextEditingController();

  String creditName = "Russell austin";

  String creditNumber = "xxxx xxxx xxxx 8790";

  String creditDate = "01 / 22";

  changeCreditNumber(String value) {
    setState(() {
      value.isEmpty
          ? creditNumber = "xxxx xxxx xxxx 8790"
          : creditNumber = value;
    });
  }

  changeCreditName(String value) {
    setState(() {
      value.isEmpty ? creditName = "Russell austin" : creditName = value;
    });
  }

  changeCreditDate(String value) {
    setState(() {
      value.isEmpty ? "01 / 22" : creditDate = creditDate = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F5F9),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Add Credit Card",
          style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.9,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Image.asset("assets/images/card_image.png"),
                      Padding(
                        padding: const EdgeInsets.only(top: 70, left: 20),
                        child: Text(
                          creditNumber,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.23,
                            left: 20),
                        child: Text(
                          creditName,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.225,
                            left: MediaQuery.of(context).size.width * 0.699),
                        child: Text(
                          creditDate,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value?.length == 0) {
                        return "please enter card name";
                      }
                    },
                    keyboardType: TextInputType.name,
                    controller: cardName,
                    onChanged: (value) {
                      setState(() {
                        changeCreditName(value);
                      });
                    },
                    decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.person_pin,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Name on the card",
                        hintStyle: const TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value?.length == 0) {
                        return "please enter card number";
                      }
                    },
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      setState(() {
                        changeCreditNumber(value);
                      });
                    },
                    controller: cardNumber,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.credit_card_sharp,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Card number",
                        hintStyle: const TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10))),
                    cursorColor: Colors.white,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            validator: (value) {
                              if (value?.length == 0) {
                                return "please enter date";
                              }
                            },
                            keyboardType: TextInputType.datetime,
                            onChanged: (value) {
                              setState(() {
                                changeCreditDate(value);
                              });
                            },
                            controller: date,
                            decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.date_range,
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                hintText: "Month / Year",
                                hintStyle: const TextStyle(color: Colors.grey),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10))),
                            cursorColor: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: TextFormField(
                            validator: (value) {
                              if (value?.length == 0) {
                                return "please enter cvv";
                              }
                            },
                            controller: cvv,
                            decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.lock_open,
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                hintText: "cvv",
                                hintStyle: const TextStyle(color: Colors.grey),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10))),
                            cursorColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {}
                        //Navigator.of(context).pushNamed(PageView2.route);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFFFC107)),
                      child: const Text("Add credit card"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

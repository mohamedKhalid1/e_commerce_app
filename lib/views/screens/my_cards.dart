import 'package:flutter/material.dart';

class MyCards extends StatelessWidget {
  MyCards({Key? key}) : super(key: key);
  static const String route = "myCards";

  final GlobalKey formKey = GlobalKey<FormState>();
  final TextEditingController cardName = TextEditingController();

  final TextEditingController cardNumber = TextEditingController();

  final TextEditingController date = TextEditingController();

  final TextEditingController cvv = TextEditingController();

  String creditName = "Russell austin";

  String creditNumber = "xxxx xxxx xxxx 8790";

  String creditDate = "01 / 22";
  String creditCVV = "988";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F5F9),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "MyCards",
          style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.black),
        ),
        centerTitle: true,
        actions: const [
          Icon(
            Icons.add_circle_outline,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.88,
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
            child: Column(
              children: [
                Card(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Default ",
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            backgroundColor: Color(0xFFF4F5F9)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Image.asset(
                                "assets/images/master_card.png",
                                width: 50,
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Master Card",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "XXXX  XXXX  XXXX  5678",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                                Text(
                                  "Expiry : 01/22      CVV : 908",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10),
                                ),
                              ],
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.arrow_drop_down_circle_rounded,
                              color: Colors.green,
                            )
                          ],
                        ),
                      ),
                      const Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Form(
                          key: formKey,
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                height: 45,
                                child: TextFormField(
                                  validator: (value) {
                                    if (value?.length == 0) {
                                      return "please enter card name";
                                    }
                                  },
                                  keyboardType: TextInputType.name,
                                  controller: cardName,
                                  decoration: InputDecoration(
                                      prefixIcon: const Icon(
                                        Icons.person_pin,
                                      ),
                                      filled: true,
                                      fillColor: const Color(0xFFF4F5F9),
                                      hintText: creditName,
                                      hintStyle:
                                          const TextStyle(color: Colors.grey),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                height: 45,
                                child: TextFormField(
                                  validator: (value) {
                                    if (value?.length == 0) {
                                      return "please enter card number";
                                    }
                                  },
                                  keyboardType: TextInputType.number,
                                  controller: cardNumber,
                                  decoration: InputDecoration(
                                      prefixIcon: const Icon(
                                        Icons.credit_card_sharp,
                                      ),
                                      filled: true,
                                      fillColor: const Color(0xFFF4F5F9),
                                      hintText: creditNumber,
                                      hintStyle:
                                          const TextStyle(color: Colors.grey),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                  cursorColor: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: SizedBox(
                                        height: 45,
                                        child: TextFormField(
                                          validator: (value) {
                                            if (value?.length == 0) {
                                              return "please enter date";
                                            }
                                          },
                                          keyboardType: TextInputType.datetime,
                                          controller: date,
                                          decoration: InputDecoration(
                                              prefixIcon: const Icon(
                                                Icons.date_range,
                                              ),
                                              filled: true,
                                              fillColor:
                                                  const Color(0xFFF4F5F9),
                                              hintText: creditDate,
                                              hintStyle: const TextStyle(
                                                  color: Colors.grey),
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide.none,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10))),
                                          cursorColor: Colors.white,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Expanded(
                                      child: SizedBox(
                                        height: 45,
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
                                              fillColor:
                                                  const Color(0xFFF4F5F9),
                                              hintText: creditCVV,
                                              hintStyle: const TextStyle(
                                                  color: Colors.grey),
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide.none,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10))),
                                          cursorColor: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.toggle_on_rounded,
                                    color: Colors.green,
                                    size: 40,
                                  ),
                                  Text(
                                    "Make default",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Image.asset(
                            "assets/images/visa.png",
                            width: 50,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Visa Card",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                            Text(
                              "XXXX  XXXX  XXXX  5678",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                            Text(
                              "Expiry : 01/22      CVV : 908",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10),
                            ),
                          ],
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.arrow_drop_down_circle_sharp,
                          color: Colors.green,
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Image.asset(
                            "assets/images/master_card.png",
                            width: 50,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Master Card",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                            Text(
                              "XXXX  XXXX  XXXX  5678",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                            Text(
                              "Expiry : 01/22      CVV : 908",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10),
                            ),
                          ],
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.arrow_drop_down_circle_sharp,
                          color: Colors.green,
                        )
                      ],
                    ),
                  ),
                ),
                Spacer(),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      //if (formKey.currentState!.validate()) {}
                      //Navigator.of(context).pushNamed(PageView2.route);
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFFC107)),
                    child: const Text("Save settings"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AuthBodyWidget extends StatelessWidget {
  const AuthBodyWidget(
      {super.key,
      required this.text1,
      required this.text2,
      required this.buttonText,
      required this.function,
      required this.imgOrStack,
      required this.textFieldAndOthers});

  final String text1, text2, buttonText;
  final Function function;
  final Widget imgOrStack, textFieldAndOthers;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                imgOrStack,
                Text(text1, style: Theme.of(context).textTheme.bodyLarge),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  text2,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(
                  height: 20,
                ),
                textFieldAndOthers,
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.08,
                ),

              ],
            ),
              Container(
                width: 380,
                height: 60,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: const Color(0xFFFFC107)),
                child:
                Row(
                  children:[
                    Expanded(
                      child: Text(
                        buttonText,
                        style: const TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const Icon(Icons.arrow_forward_outlined,color: Colors.white),
                    const SizedBox(width: 5)
                  ],
                )
              ),
          ],

          ),
        ),
      ),
    );
  }
}

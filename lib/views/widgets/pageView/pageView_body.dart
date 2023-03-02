import 'package:flutter/material.dart';

class PageViewBody extends StatelessWidget {
  const PageViewBody({super.key,
    required this.image,
    required this.text1,
    required this.text2,
    required this.function,
    this.color1,
    this.color2,
    this.color4,
    this.color3,
  });

  final String image;
  final String text1, text2;
  final Color? color1, color2, color3, color4;
  final Function function;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Image.asset(
              image,
              height: MediaQuery.of(context).size.height*0.9,
              fit: BoxFit.cover,
            ),
            ClipPath(
              child: Container(
                padding: const EdgeInsets.only(top: 20),
                height: MediaQuery.of(context).size.height * 0.35,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(top:Radius.circular(170)),
                    color: Colors.white,),
                child: Column(
                  children: [
                    Text(
                      text1,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(text2,style: const TextStyle(color: Color(0xFF868889)),),
                    const SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.circle,
                            color: color1??const Color(0xFFDCDCDC),
                            size: 8,
                          ),
                          const SizedBox(width: 5),
                          Icon(
                            Icons.circle,
                            size: 8,
                            color: color2??const Color(0xFFDCDCDC),
                          ),
                          const SizedBox(width: 5),
                          Icon(
                            Icons.circle,
                            size: 8,
                            color: color3??const Color(0xFFDCDCDC),
                          ),
                          const SizedBox(width: 5),
                          Icon(
                            Icons.circle,
                            size: 8,
                            color: color4??const Color(0xFFDCDCDC),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed:(){function();},
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFFC107)),
              child: const Text("Get started"),
            ),
          ),
        ),
      ],
    );
  }
}

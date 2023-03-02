import 'package:e_commerce_app/views/screens/pageView_screens/pageView_4.dart';
import 'package:e_commerce_app/views/widgets/pageView/pageView_body.dart';
import 'package:flutter/material.dart';

class PageView3 extends StatelessWidget {
  const PageView3({Key? key}) : super(key: key);
  static const String route = "pageView3";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageViewBody(
        image: "assets/images/pageview/pageview3.png",
        text1: "Buy Premium\nQuality Fruits",
        text2:
            "Lorem ipsum dolor sit amet, consetetur\nsadipscing elitr, sed diam nonumy",
        color3: Colors.green,
        function: () {
          Navigator.of(context).pushNamed(PageView4.route);
        },
      ),
    );
  }
}

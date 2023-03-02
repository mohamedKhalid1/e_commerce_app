import 'package:e_commerce_app/views/screens/pageView_screens/pageView_1.dart';
import 'package:e_commerce_app/views/widgets/pageView/pageView_body.dart';
import 'package:flutter/material.dart';

class PageView4 extends StatelessWidget {
  const PageView4({Key? key}) : super(key: key);
  static const String route = "pageView4";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageViewBody(
        image: "assets/images/pageview/pageview4.png",
        text1: "Buy Quality\nDairy Products",
        text2:
            "Lorem ipsum dolor sit amet, consetetur\nsadipscing elitr, sed diam nonumy",
        color4: Colors.green,
        function: () {
          Navigator.of(context).pushNamed(PageView1.route);
        },
      ),
    );
  }
}

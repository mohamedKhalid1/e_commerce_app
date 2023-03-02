import 'package:flutter/material.dart';

class ActiveIcon extends StatelessWidget {
  const ActiveIcon({Key? key, required this.icon}) : super(key: key);
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: const Color(0xFFF37A20),
            borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.all(10),
        child: Icon(
          icon,
          color: Theme.of(context).canvasColor,
        ));
  }
}

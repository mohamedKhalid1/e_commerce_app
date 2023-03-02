import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: const Color(0xFF5EC401),
                  borderRadius: BorderRadius.circular(22)),
              child:
                  const Icon(Icons.location_on_outlined, color: Colors.white)),
          title: Text("Your Location",
              style: Theme.of(context).textTheme.bodyMedium),
          subtitle: Text(
            "32 Llanberis Close, Tonteg, CF38 1HR",
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios_outlined,
          ),
        )
      ],
    );
  }
}

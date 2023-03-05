import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              "Notification",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 1.2,
            child: ListView.builder(
              itemCount: 16,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(12),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color.fromRGBO(94, 196, 1, 0.17),
                      ),
                      child: ListTile(
                        title: const Text("Order #345"),
                        subtitle: const Text(
                            "Your Order is Confirmed. Please \ncheck everything is okay"),
                        trailing: Column(
                          children: const [
                            Text("3:57 PM"),
                            CircleAvatar(
                              backgroundColor: Color(0xFFF37A20),
                              child: Icon(Icons.reorder),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              "Settings",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Center(
            child: Stack(
              alignment: Alignment.bottomRight,
              children: const [
                CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/images/authentication/profile.png'),
                  radius: 60,
                ),
                CircleAvatar(
                  backgroundColor: Color(0xFFF37A20),
                  child: Icon(
                    Icons.add_a_photo,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Divider(
            height: 60,
            color: Colors.grey[800],
          ),
          const Text(
            'Name',
            style: TextStyle(color: Colors.grey, letterSpacing: 2),
          ),
          const SizedBox(height: 10),
          Text(
            'Mohamed Khalid',
            style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2,
                fontSize: 28,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 30),
          const Text(
            'number of sales',
            style: TextStyle(color: Colors.grey, letterSpacing: 2),
          ),
          const SizedBox(height: 10),
          Text(
            '8',
            style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2,
                fontSize: 28,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 30),
          Row(
            children: <Widget>[
              Icon(
                Icons.email,
                color: Colors.grey[400],
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                'keith@mail.com',
                style: TextStyle(
                    color: Colors.grey[400], fontSize: 18, letterSpacing: 1),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

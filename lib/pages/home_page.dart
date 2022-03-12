import 'package:flutter/material.dart';
import 'package:weather_app/components/icon_content.dart';
import 'package:weather_app/pages/auth_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          iconContent(150),
          const SizedBox(height: 20.0),
          const Text(
            "Welcome to Weather App",
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900),
          ),
          const SizedBox(height: 50.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: OutlinedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const AuthPage()));
              },
              child: const Text("Check the weather"),
            ),
          ),
        ],
      ),
    );
  }
}

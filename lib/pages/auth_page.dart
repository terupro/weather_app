import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather_app/components/icon_content.dart';
import 'package:weather_app/pages/weather_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            // User is signed in
            return const WeatherPage();
          } else {
            // User is not signed in
            return SignInScreen(
              providerConfigs: [
                EmailProviderConfiguration(),
              ],
              headerBuilder: (context, constraints, _) => Padding(
                padding: EdgeInsets.all(20),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: iconContent(150),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}

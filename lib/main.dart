import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather_app/components/icon_content.dart';
import 'package:weather_app/constants.dart';
import 'package:weather_app/pages/auth_page.dart';
import 'package:weather_app/pages/home_page.dart';
import 'package:weather_app/pages/weather_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather App',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.white,
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            minimumSize: const Size.fromHeight(50),
            textStyle:
                const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            backgroundColor: Colors.blue,
            primary: Colors.white,
          ),
        ),
      ),
      home: HomePage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:plants_app/constants.dart';
import 'package:plants_app/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const ScreenHome(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: kPrimaryColor),
        scaffoldBackgroundColor: kBackgroundColor,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
    );
  }
}

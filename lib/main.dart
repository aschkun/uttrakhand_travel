import 'package:flutter/material.dart';
import 'package:travel_one/pages/homepage.dart';
import 'package:travel_one/pages/mainpage.dart';
import 'package:travel_one/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: const WelcomePage(),
    );
  }
}

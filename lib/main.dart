import 'package:flutter/material.dart';
import 'package:yoga/welcome_page.dart';

const d_red = Color(0xFFE97170);
const d_grey = Color.fromARGB(255, 92, 92, 92);
const d_blue = Color(0xFF576dff);
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yoga App',
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}

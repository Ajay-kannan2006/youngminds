// import 'package:crisisconnect/pages/Emergency_button.dart';
import 'package:crisisconnect/pages/start_page.dart';
// import 'package:crisisconnect/pages/start_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: StartPage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'welcome_page.dart';

const d_red = Color(0xFFE9717D);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YOGA',
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}

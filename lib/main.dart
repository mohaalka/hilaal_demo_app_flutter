import 'package:flutter/material.dart';
import 'homePage.dart';

void main() {
  runApp(HilaalDemo());
}

class HilaalDemo extends StatelessWidget {
  const HilaalDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

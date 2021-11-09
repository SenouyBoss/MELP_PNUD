import 'package:flutter/material.dart';

import 'Splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash()// younes set for 4 might change later
    );
  }
}


import 'package:flutter/material.dart';

import 'screen/home_page.dart';

void main() {
  runApp(TuneMyApp());
}

class TuneMyApp extends StatelessWidget {
  const TuneMyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

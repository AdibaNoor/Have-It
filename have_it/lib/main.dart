import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:have_it/Screens/slide_page.dart';

import 'Screens/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,systemNavigationBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SlidePage(),
    );
  }
}

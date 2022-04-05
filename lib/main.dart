import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/splash/splash_screen.dart';

import 'presentation/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lighTheme,
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

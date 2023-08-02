import 'package:flutter/material.dart';
import 'package:track_my_crypto/components/bottom_navigation.dart';
import 'package:track_my_crypto/utils/color_resources.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const BottomNavigation(),
      theme: ThemeData()
          .copyWith(scaffoldBackgroundColor: ColorResources.backgroundColor),
    );
  }
}

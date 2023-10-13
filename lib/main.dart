import 'package:cart_model/bidinges.dart';
import 'package:cart_model/view/tabBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: bidinges(),
      home: m_taps(),
    );
  }
}

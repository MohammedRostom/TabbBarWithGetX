import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Row(
        children: [
          CircleAvatar(),
          CircleAvatar(),
          CircleAvatar(),
          CircleAvatar(),
          CircleAvatar(),
        ],
      )),
    );
  }
}

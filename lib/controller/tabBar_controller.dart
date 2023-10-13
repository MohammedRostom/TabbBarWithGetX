import 'package:flutter/material.dart';
import 'package:get/get.dart';

class tabBar_controller extends GetxController
    with GetSingleTickerProviderStateMixin {
  bool isred = false;

  void selected() {
    isred = !isred;
    update();
  }

  List<BottomNavigationBarItem> my_taps = [
    BottomNavigationBarItem(icon: Icon(Icons.home)),
    BottomNavigationBarItem(icon: Icon(Icons.chat)),
    BottomNavigationBarItem(icon: Icon(Icons.card_travel)),
  ];
  List<Widget> screens = [
    Text("data1"),
    Text("data2"),
    Text("data3"),
  ];

  TabController? Ctap;
  @override
  void onInit() {
    Ctap = TabController(length: screens.length, vsync: this);
  }
}

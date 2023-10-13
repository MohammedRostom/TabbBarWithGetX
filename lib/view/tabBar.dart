import 'package:cart_model/controller/tabBar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class m_taps extends StatelessWidget {
  const m_taps({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<tabBar_controller>(
      init: tabBar_controller(),
      builder: (controllet) => Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        appBar: AppBar(),
        body: Row(children: [
          NewWidget(cont: controllet),
          NewWidget(cont: controllet),
        ]),
        bottomNavigationBar: BottomAppBar(
            color: Colors.red,
            shape: const CircularNotchedRectangle(),
            child: Container(
              height: 55,
            )),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
    required this.cont,
  });

  final tabBar_controller cont;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        cont.selected();
      },
      child: CircleAvatar(
        backgroundColor: cont.isred ? Colors.red : Colors.grey,
      ),
    );
  }
}

class items extends StatelessWidget {
  const items({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(4),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.9),
              borderRadius: BorderRadius.circular(10)),
          child: const Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Icon(Icons.home),
                Text(
                  "Home",
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
        ));
  }
}

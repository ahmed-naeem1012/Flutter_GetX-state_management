// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_getx/counter_controller.dart';
import 'package:get/get.dart';

class Statemanagementgetx extends StatefulWidget {
  const Statemanagementgetx({super.key});

  @override
  State<Statemanagementgetx> createState() => _StatemanagementgetxState();
}

class _StatemanagementgetxState extends State<Statemanagementgetx> {
  int x = 20;

  final Counter_Controller controller = Get.put(Counter_Controller());

  // @override
  // void initState() {
  //   super.initState();
  //   Timer.periodic(const Duration(minutes: 1), (timer) {
  //     y++;
  //     setState(() {});
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    print('REbuild');
    return Scaffold(
      appBar: AppBar(
        title: const Text("State Management"),
      ),
      body: Center(
        child: Obx(() {
          return Text(
            controller.counter.toString(),
            style: const TextStyle(fontSize: 45),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        // setState(() {
        // });

        controller.incrementcounter();
      }),
    );
  }
}

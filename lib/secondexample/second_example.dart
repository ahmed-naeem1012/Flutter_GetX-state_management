// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_getx/secondexample/state_controller.dart';
import 'package:get/get.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final state_controller controller = Get.put(state_controller());
  double coloropacity = .4;
  @override
  Widget build(BuildContext context) {
    print("rebuild");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Example"),
      ),
      body: Column(
        children: [
          Obx(
            () => Container(
              height: Get.height * .2,
              width: Get.width * .4,
              color: Colors.red.withOpacity(controller.opacitycontroller.value),
            ),
          ),
          Obx(() => Slider(
              value: controller.opacitycontroller.value,
              onChanged: (value) {
                print(value);
                controller.setOpacity(value);
              }))
        ],
      ),
    );
  }
}

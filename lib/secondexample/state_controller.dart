// ignore_for_file: camel_case_types

import 'package:get/get.dart';

class state_controller extends GetxController {
  RxDouble opacitycontroller = .4.obs;

  setOpacity(double value) {
    opacitycontroller.value = value;
    // print(opacitycontroller.value);
  }
}

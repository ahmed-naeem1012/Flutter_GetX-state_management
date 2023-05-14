// ignore_for_file: camel_case_types

import 'package:get/get.dart';

class Counter_Controller extends GetxController {
  RxInt counter = 1.obs;
  incrementcounter() {
    counter.value++;
    print(counter.value);
  }
}

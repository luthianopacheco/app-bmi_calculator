import 'package:get/get.dart';
import 'package:bmi_calculator/controller/bmi_controller.dart';

import '../models/repository/bmi_repository.dart';

class BMIBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BMIRepository>(() => BMIRepository());
    Get.lazyPut<BMIController>(() => BMIController(Get.find<BMIRepository>()),
        fenix: true);
  }
}

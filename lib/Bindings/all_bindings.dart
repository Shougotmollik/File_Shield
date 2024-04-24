import 'package:file_shield/Controllers/calculator_controller.dart';
import 'package:get/get.dart';

class AllBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CalculatorController());
  }
}

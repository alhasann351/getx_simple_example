import 'package:get/get.dart';

class ExampleController extends GetxController {
  RxDouble opacity = 0.1.obs;

  setOpacityValue(double value) {
    opacity.value = value;
  }
}

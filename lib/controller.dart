import 'package:get/get.dart';

class Controller extends GetxController {
  RxInt angka = 0.obs;
  tambahAngka() {
    angka = angka++;
  }
}

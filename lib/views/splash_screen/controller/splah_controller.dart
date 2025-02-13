import 'dart:async';

import 'package:code_alpha_fitness_app/views/welcome_screen/welcome_screen.dart';

import '../../../constants/app_linker/app_linker.dart';

class SplahController extends GetxController {
  void navegateScreen() {
    Timer(Duration(seconds: 3), () => Get.off(WelcomeScreen()));
  }
}

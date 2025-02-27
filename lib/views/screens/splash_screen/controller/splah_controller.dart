
import '../../../../constants/app_linker/app_linker.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    navigateToWelcomeScreen();
  }

  void navigateToWelcomeScreen() {
    Timer(Duration(seconds: 3), () => Get.offNamed(AppRoutes.welcome));
  }
}

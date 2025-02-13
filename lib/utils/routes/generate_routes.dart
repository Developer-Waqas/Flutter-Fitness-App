
import '../../constants/app_linker/app_linker.dart';

class GenerateRoutes {
  static List<GetPage> getRoute() {
    return [
      GetPage(
        name: AppRoutes.splash,
        page: () => SplashScreen(),
        transition: Transition.fadeIn
      ),
      GetPage(
        name: AppRoutes.welcome,
        page: () => WelcomeScreen(),
        transition: Transition.fadeIn
      ),
    ];
  }
}

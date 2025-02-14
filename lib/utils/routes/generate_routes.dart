
import 'package:code_alpha_fitness_app/views/onboarding_screen/onboarding_screen.dart';

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
      GetPage(
        name: AppRoutes.onboarding,
        page: () => OnboardingScreen(),
        transition: Transition.fadeIn
      ),
    ];
  }
}

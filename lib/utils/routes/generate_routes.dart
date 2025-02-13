import 'package:code_alpha_fitness_app/utils/routes/app_routes.dart';
import 'package:code_alpha_fitness_app/views/splash_screen/splash_screen.dart';
import 'package:code_alpha_fitness_app/views/welcome_screen/welcome_screen.dart';

import '../../constants/app_linker/app_linker.dart';

class GenerateRoutes {
  List<GetPage> getPage() {
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

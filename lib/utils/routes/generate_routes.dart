
import 'package:code_alpha_fitness_app/views/screens/dashboard_screen/dashboard_screen.dart';

import '../../constants/app_linker/app_linker.dart';

class GenerateRoutes {
  static List<GetPage> getRoute() {
    return [
      GetPage(
          name: AppRoutes.splash,
          page: () => SplashScreen(),
          curve: Curves.easeInOut),
      GetPage(
          name: AppRoutes.welcome,
          page: () => WelcomeScreen(),
          curve: Curves.easeInOut),
      GetPage(
          name: AppRoutes.onboarding,
          page: () => OnboardingScreen(),
          curve: Curves.easeInOut),
      GetPage(
          name: AppRoutes.login,
          page: () => LoginScreen(),
          curve: Curves.easeInOut),
      GetPage(
          name: AppRoutes.register,
          page: () => RegisterScreen(),
          curve: Curves.easeInOut),
      GetPage(
          name: AppRoutes.forgot,
          page: () => ForgotPasswordScreen(),
          curve: Curves.easeInOut),
      GetPage(
          name: AppRoutes.verify,
          page: () => VerifyAccountScreen(),
          curve: Curves.easeInOut),
      GetPage(
          name: AppRoutes.dashboard,
          page: () => DashboardScreen(),
          curve: Curves.easeInOut),
    ];
  }
}

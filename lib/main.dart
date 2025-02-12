import 'package:code_alpha_fitness_app/constants/app_colors/app_colors.dart';
import 'package:code_alpha_fitness_app/views/splash_screen/splash_screen.dart';

import 'constants/app_linker/app_linker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}

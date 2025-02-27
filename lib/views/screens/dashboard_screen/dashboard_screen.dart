import 'package:code_alpha_fitness_app/constants/app_linker/app_linker.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Container(
        height: 247,
        width: 375,
        decoration: BoxDecoration(
            color: AppColors.primary, borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}

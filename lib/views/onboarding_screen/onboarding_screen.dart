import 'package:code_alpha_fitness_app/models/onboarding_model/onbaording_model.dart';
import 'package:code_alpha_fitness_app/views/onboarding_screen/onboarding_content.dart';
import 'package:code_alpha_fitness_app/views/onboarding_screen/onboarding_controller/onboarding_controller.dart';

import '../../constants/app_linker/app_linker.dart';

class OnboardingScreen extends StatelessWidget {
  final OnboardingController onboardingController =
      Get.put(OnboardingController());
  OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.secondary,
            AppColors.whiteColor,
            AppColors.whiteColor,
            AppColors.whiteColor,
            AppColors.tertiary,
          ],
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(itemBuilder: (context, index) {
              return OnboardingContent(
                imagePath: onboardingController.pagesList[index].imagePath!,
                title: onboardingController.pagesList[index].title,
              );
            }),
          ),
        ],
      ),
    );
  }
}

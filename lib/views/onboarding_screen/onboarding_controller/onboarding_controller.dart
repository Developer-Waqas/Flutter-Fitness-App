import 'package:code_alpha_fitness_app/models/onboarding_model/onbaording_model.dart';

import '../../../constants/app_linker/app_linker.dart';

class OnboardingController extends GetxController {
  final PageController pageController = PageController();

  var selectedPageIndex = 0.obs;

  void changePageIndex(int index) {
    selectedPageIndex.value = index;
  }

  List<OnboardingModel> pagesList = [
    OnboardingModel(
      AppImagesAssets.onboardingImage1,
      RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: AppStyle.primaryStyle2,
          children: [
            TextSpan(text: 'PERFECT BODY\n'),
            TextSpan(text: 'DOING '),
            TextSpan(text: 'CROSSFIT\n', style: AppStyle.primaryStyle1),
            TextSpan(text: 'EXCERSIE'),
          ],
        ),
      ),
    ),
    OnboardingModel(
      AppImagesAssets.onboardingImage2,
      RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: AppStyle.primaryStyle2,
          children: [
            TextSpan(text: 'SHOT STRONG\n'),
            TextSpan(text: 'TIMELESS\n', style: AppStyle.primaryStyle1),
            TextSpan(text: 'MAN TRAINIG'),
          ],
        ),
      ),
    ),
    OnboardingModel(
      AppImagesAssets.onboardingImage3,
      
      RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: AppStyle.primaryStyle2,
          children: [
            TextSpan(text: 'HEALTHY MUSCULAR\n'),
            TextSpan(text: 'SPORTSMAN\n', style: AppStyle.primaryStyle1),
            TextSpan(text: 'STANDING'),
          ],
        ),
      ),
    ),
  ];
}

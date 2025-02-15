
import '../../../constants/app_linker/app_linker.dart';

class OnboardingController extends GetxController {
  late PageController pageController = PageController();

  @override
  void onInit() {
    super.onInit();
    pageController = PageController();
  }

  var selectedPageIndex = 0.obs;
  var isActive = true.obs;

  void changePageIndex(int index) {
    selectedPageIndex.value = index;
  }

  void nextPage() {
    if (selectedPageIndex.value < 2) {
      pageController.nextPage(
          duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
    } else {
      pageController.jumpTo(0);
    }
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
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
  ].obs;
}

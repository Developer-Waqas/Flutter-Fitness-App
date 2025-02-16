import '../../constants/app_linker/app_linker.dart';

class OnboardingScreen extends StatelessWidget {
  final OnboardingController onboardingController =
      Get.put(OnboardingController());
  final PageController pageController = Get.put(PageController());
  OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
              child: PageView.builder(
                controller: onboardingController.pageController,
                  onPageChanged: onboardingController.changePageIndex,
                  itemCount: onboardingController.pagesList.length,
                  itemBuilder: (context, index) {
                    return OnboardingContent(
                      imagePath:
                          onboardingController.pagesList[index].imagePath!,
                      title: onboardingController.pagesList[index].title,
                    );
                  }),
            ),
            SizedBox(
              height: 30,
            ),
            Obx(
              () {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(
                      onboardingController.pagesList.length,
                      (index) => AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        height: 8,
                        width: onboardingController.selectedPageIndex.value ==
                                index
                            ? 24
                            : 8,
                        decoration: BoxDecoration(
                          color: onboardingController.selectedPageIndex.value ==
                                  index
                              ? AppColors.primary
                              : AppColors.blackColor,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(12),
                          ),
                        ),
                        margin: EdgeInsets.symmetric(horizontal: 2),
                      ),
                    ),
                  ],
                );
              },
            ),
            SizedBox(
              height: 50,
            ),
            Obx(
              () => onboardingController.selectedPageIndex.value == 2
                  ? CustomButton(
                      buttonTitle: AppStringAssets.start,
                      onTap: onboardingController.goToLoginScreen,
                      buttonColor: AppColors.blackColor,
                      buttonHeight: 56,
                      buttonWidth: 180,
                      textStyle: AppStyle.buttonStyle1,
                    )
                  : CustomButton(
                      buttonTitle: AppStringAssets.next,
                      onTap: onboardingController.nextPage,
                      buttonColor: AppColors.blackColor,
                      buttonHeight: 56,
                      buttonWidth: 180,
                      textStyle: AppStyle.buttonStyle1,
                    ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

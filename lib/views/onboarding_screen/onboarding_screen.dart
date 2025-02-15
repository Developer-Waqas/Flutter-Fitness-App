
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
            child: PageView.builder(
                onPageChanged: (index) {
                  onboardingController.changePageIndex(index);
                },
                itemCount: onboardingController.pagesList.length,
                itemBuilder: (context, index) {
                  return OnboardingContent(
                    imagePath: onboardingController.pagesList[index].imagePath!,
                    title: onboardingController.pagesList[index].title,
                  );
                }),
          ),
          Obx(
            () {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
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
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

import '../../constants/app_linker/app_linker.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

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
            SizedBox(
              height: 80,
            ),
            Image.asset(
              AppImagesAssets.onboardingImage1,
              height: 300,
              width: 349,
            ),
            Text.rich(
              TextSpan(
                style: AppStyle.primaryStyle2,
                children: [
                  TextSpan(text: 'PERFECT BODY\n'),
                  TextSpan(text: 'DOING '),
                  TextSpan(text: 'CROSSFIT\n', style: AppStyle.primaryStyle1),
                  TextSpan(text: 'EXCERSIE'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

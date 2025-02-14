import '../../constants/app_linker/app_linker.dart';

class SplashScreen extends StatelessWidget {
  final SplashController splashController = Get.put(SplashController());

  SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.primary,
            AppColors.whiteColor,
            AppColors.whiteColor,
            AppColors.whiteColor,
            AppColors.primary,
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              AppImagesAssets.splashImage,
              height: 255,
              width: 229,
            ),
          ),
          SizedBox(height: 20,),
          Text(
            'FITNESS APP',
            style: AppStyle.primaryStyle2,
          ),
        ],
      ),
    );
  }
}

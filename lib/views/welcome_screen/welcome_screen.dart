import '../../constants/app_linker/app_linker.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

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
              AppColors.primary,
              AppColors.whiteColor,
              AppColors.whiteColor,
              AppColors.whiteColor,
              AppColors.primary,
            ],
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Image.asset(
              AppImagesAssets.welcomeImage,
              height: 340,
              width: 300,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppStringAssets.welcomeTitle1,
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: 'BebasNeue',
                    fontWeight: FontWeight.w400,
                    fontSize: 48,
                    color: AppColors.blackColor,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  AppStringAssets.welcomeTitle2,
                  style: AppStyle.primaryStyle1,
                ),
              ],
            ),
            Text(
              AppStringAssets.welcomeSubTitle1,
              textAlign: TextAlign.center,
              style: AppStyle.primaryStyle2,
            ),
            SizedBox(
              height: 30,
            ),
            CustomButton(
              buttonTitle: AppStringAssets.welcomeBtnText,
              onTap: () {},
              buttonColor: AppColors.blackColor,
              buttonHeight: 56,
              buttonWidth: 180,
              textStyle: AppStyle.buttonStyle1,
            ),
          ],
        ),
      ),
    );
  }
}

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
                  'PRO',
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
                  'FITNESS',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: 'BebasNeue',
                    fontWeight: FontWeight.w400,
                    fontSize: 48,
                    color: AppColors.primary,
                  ),
                ),
              ],
            ),
            Text(
              'We train your body to be\ngreat and fit.',
              textAlign: TextAlign.center,
              style: TextStyle(
                decoration: TextDecoration.none,
                fontFamily: 'DMSans',
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.blackColor,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                print('Button Clicked!');
              },
              splashColor: AppColors.greyColor,
              highlightColor: AppColors.greyColor,
              child: Container(
                height: 56,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: AppColors.blackColor,
                ),
                child: Center(
                  child: Text(
                    'LET\'S START',
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'BebasNeue',
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

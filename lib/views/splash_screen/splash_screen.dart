
import '../../constants/app_linker/app_linker.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Stack(
        children: [
          Positioned(
            child: Image.asset(APpImagesAssets.ellipse1Image),
          ),
          Positioned(
            bottom: 0,
            left: 10,
            child: Image.asset(APpImagesAssets.ellipse2Image),
          ),
          Center(
              child: Image.asset(
            APpImagesAssets.splashImage,
            height: 255,
            width: 229,
          ))
        ],
      ),
    );
  }
}

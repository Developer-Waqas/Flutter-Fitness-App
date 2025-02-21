import '../../constants/app_linker/app_linker.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 60,
              ),
              Text(
                AppStringAssets.loginWelcomeText,
                style: AppStyle.primaryStyle3,
              ),
              Text(
                AppStringAssets.loginSubTitle,
                style: AppStyle.secondaryStyle2,
              ),
              SizedBox(
                height: 40,
              ),

              // Email TextFormField
              Text(AppStringAssets.emailText, style: AppStyle.secondaryStyle1),
              SizedBox(height: 3),
              CustomTextFormField(
                hintText: AppStringAssets.emailHintText,
                suffixIcon: Icon(Icons.done),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Color(0xff696969),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Color(0xff696969),
                  ),
                ),
                borderEnabled: true,
fillColor: AppColors.greyColor.withOpacity(0.2),
                filled: true,              ),
              SizedBox(height: 20),

              // Password TextFormField
              Text(AppStringAssets.passwordText,
                  style: AppStyle.secondaryStyle1),
              SizedBox(height: 3),
              CustomTextFormField(
                hintText: AppStringAssets.passwordHintText,
                suffixIcon: Icon(Icons.visibility),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Color(0xff696969),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Color(0xff696969),
                  ),
                ),
                borderEnabled: true,
               fillColor: AppColors.greyColor.withOpacity(0.2),
                filled: true,
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomButton(
                    buttonTitle: AppStringAssets.forgotPasswordButton,
                    onTap: () {
                      Get.toNamed(AppRoutes.forgot);
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 35,
              ),
              CustomButton(
                buttonTitle: AppStringAssets.loginButton,
                textStyle: AppStyle.buttonStyle1,
                onTap: () {},
                buttonColor: AppColors.primary,
                buttonHeight: 56,
                buttonWidth: MediaQuery.of(context).size.width,
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  AppStringAssets.orLoginWith,
                  style: AppStyle.tertaryStyle1,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CustomIconButton(
                buttonTitle: AppStringAssets.connectWithGoogleButtonText,
                textStyle: AppStyle.tertaryStyle2,
                onTap: () {},
                image: AppIconAssets.googleIcon,
                imageHeight: 24,
                imageWidth: 24,
                height: 56,
                width: MediaQuery.of(context).size.width,
                buttonColor: AppColors.greyColor.withOpacity(0.3),
              ),
              SizedBox(height: 20),
              CustomIconButton(
                buttonTitle: AppStringAssets.connectWithFacebookButtonText,
                textStyle: AppStyle.tertaryStyle2
                    .copyWith(color: AppColors.whiteColor),
                onTap: () {},
                image: AppIconAssets.facebookIcon,
                imageHeight: 24,
                imageWidth: 24,
                height: 56,
                width: MediaQuery.of(context).size.width,
                buttonColor: AppColors.fbColor,
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppStringAssets.dontAccountText,
                    style: AppStyle.tertaryStyle2
                        .copyWith(color: AppColors.blackColor),
                  ),
                  CustomButton(
                    buttonTitle: AppStringAssets.registorButton,
                    onTap: () {
                      Get.toNamed(
                        AppRoutes.register,
                      );
                    },
                    textStyle: AppStyle.tertaryStyle2.copyWith(
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

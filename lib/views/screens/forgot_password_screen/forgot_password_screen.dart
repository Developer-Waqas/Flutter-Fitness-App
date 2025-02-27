
import 'package:code_alpha_fitness_app/constants/app_linker/app_linker.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

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
                height: 50,
              ),
              Text(
                AppStringAssets.forgotPasswordText,
                style: AppStyle.primaryStyle3,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                AppStringAssets.forgotSubTitle,
                style: AppStyle.secondaryStyle2,
              ),
              SizedBox(
                height: 80,
              ),
              // Email TextFormField
              Text(AppStringAssets.emailText, style: AppStyle.secondaryStyle1),
              SizedBox(height: 3),
              CustomTextFormField(
                hintText: AppStringAssets.emailHintText,
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
              SizedBox(
                height: 80,
              ),
              CustomButton(
                buttonTitle: AppStringAssets.sendCodeButton,
                textStyle: AppStyle.buttonStyle1,
                onTap: () {
                  Get.toNamed(AppRoutes.verify);
                },
                buttonColor: AppColors.primary,
                buttonHeight: 56,
                buttonWidth: MediaQuery.of(context).size.width,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

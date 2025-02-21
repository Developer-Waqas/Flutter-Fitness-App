import 'package:pinput/pinput.dart';

import '../../constants/app_linker/app_linker.dart';

class VerifyAccountScreen extends StatelessWidget {
  const VerifyAccountScreen({super.key});

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
                'VERIFY ACCOUNT',
                style: AppStyle.primaryStyle3,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Verify your account by entering verification\ncode we sent to given Email',
                style: AppStyle.secondaryStyle2,
              ),
              SizedBox(
                height: 80,
              ),
              // Pincode Field
              Pinput(
                keyboardType: TextInputType.number,
                length: 4,
                pinAnimationType: PinAnimationType.slide,
                animationCurve: Curves.easeInOut,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                animationDuration: Duration(milliseconds: 300),
                defaultPinTheme: PinTheme(
                  textStyle: AppStyle.tertaryStyle1.copyWith(
                    color: AppColors.blackColor,
                    fontSize: 14,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.greyColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: AppColors.blackColor,
                    ),
                  ),
                  height: 50,
                  width: 50,
                ),
              ),
              SizedBox(
                height: 80,
              ),
              CustomButton(
                buttonTitle: 'RESET PASSWORD',
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
                child: CustomButton(
                  buttonTitle: 'Resend',
                  textStyle: AppStyle.tertaryStyle2.copyWith(
                    decoration: TextDecoration.underline,
                    color: AppColors.blackColor,
                  ),
                  buttonWidth: 60,
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

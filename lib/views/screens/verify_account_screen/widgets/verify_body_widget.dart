import 'package:pinput/pinput.dart';

import '../../../../constants/app_linker/app_linker.dart';

class VerifyBodyWidget extends StatelessWidget {
  const VerifyBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
      ],
    );
  }
}
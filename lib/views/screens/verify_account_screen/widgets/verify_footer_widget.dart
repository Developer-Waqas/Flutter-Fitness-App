import '../../../../constants/app_linker/app_linker.dart';

class VerifyFooterWidget extends StatelessWidget {
  const VerifyFooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Center(
                child: CustomButton(
                  buttonTitle: 'Resend',
                  textStyle: AppStyle.tartaryStyle2.copyWith(
                    decoration: TextDecoration.underline,
                    color: AppColors.blackColor,
                  ),
                  buttonWidth: 60,
                  onTap: () {},
                ),
              ),
      ],
    );
  }
}
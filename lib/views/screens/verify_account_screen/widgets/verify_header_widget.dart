import '../../../../constants/app_linker/app_linker.dart';

class VerifyHeaderWidget extends StatelessWidget {
  const VerifyHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
      ],
    );
  }
}
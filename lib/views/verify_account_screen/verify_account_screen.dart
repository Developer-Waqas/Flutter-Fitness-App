import 'package:code_alpha_fitness_app/views/verify_account_screen/widgets/verify_body_widget.dart';
import 'package:code_alpha_fitness_app/views/verify_account_screen/widgets/verify_footer_widget.dart';
import 'package:code_alpha_fitness_app/views/verify_account_screen/widgets/verify_header_widget.dart';
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
              // Header Widget
              VerifyHeaderWidget(),
              // Body Widget
              VerifyBodyWidget(),
              // Footer Widget
              VerifyFooterWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

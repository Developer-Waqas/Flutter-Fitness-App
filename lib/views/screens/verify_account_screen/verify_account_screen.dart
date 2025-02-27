
import '../../../constants/app_linker/app_linker.dart';

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

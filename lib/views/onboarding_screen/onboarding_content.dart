import '../../constants/app_linker/app_linker.dart';

class OnboardingContent extends StatelessWidget {
  final RichText? title;
  final String imagePath;

  const OnboardingContent({
    super.key,
    this.imagePath = '',
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 80,
        ),
        Image.asset(
          imagePath,
        ),
        SizedBox(
          height: 40,
        ),
        title!,
      ],
    );
  }
}

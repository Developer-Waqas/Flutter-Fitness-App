import '../../constants/app_linker/app_linker.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  String buttonTitle;
  double? buttonHeight;
  double? buttonWidth;
  Color? buttonColor;
  void Function()? onTap;
  TextStyle? textStyle;
  CustomButton({
    super.key,
    required this.buttonTitle,
    required this.onTap,
    this.buttonHeight,
    this.buttonWidth,
    this.buttonColor,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(5),
      splashFactory: InkRipple.splashFactory,
      onTap: onTap,
      child: Container(
        height: buttonHeight,
        width: buttonWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: buttonColor,
        ),
        child: Center(
          child: Text(
            buttonTitle,
            style: textStyle,
          ),
        ),
      ),
    );
  }
}

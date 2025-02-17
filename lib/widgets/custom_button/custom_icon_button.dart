import 'package:code_alpha_fitness_app/constants/app_linker/app_linker.dart';

// ignore: must_be_immutable
class CustomIconButton extends StatelessWidget {
  double? height;
  double? width;
  String buttonTitle;
  String image;
  double? imageHeight;
  double? imageWidth;
  BoxFit? fit;
  Color? buttonColor;
  double borderRadiusCircular;
  void Function()? onTap;
  TextStyle? textStyle;

  CustomIconButton({
    super.key,
    this.borderRadiusCircular = 5,
    this.buttonColor,
    required this.buttonTitle,
    this.fit,
    this.height,
    required this.image,
    this.imageHeight,
    this.imageWidth,
    this.width,
    required this.onTap,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(borderRadiusCircular),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(image, height: imageHeight, width: imageWidth),
              SizedBox(
                width: 10,
              ),
              Center(child: Text(buttonTitle, style: textStyle)),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore_for_file: must_be_immutable

import '../../constants/app_linker/app_linker.dart';

class CustomTextFormField extends StatelessWidget {
  String? hintText;
  String? labelText;
  String? errortext;
  TextStyle? hintTextStyle;
  TextStyle? labeTextStyle;
  TextStyle? errorTextStyle;
  TextStyle? textFormFieldStyle;
  Widget? prefixIcon;
  Widget? suffixIcon;
  TextEditingController? controller;
  TextInputType? keyboardType;
  AutovalidateMode? autovalidateMode;
  String? Function(String?)? onValidate;
  OutlineInputBorder? border;
  OutlineInputBorder? errorBorder;
  OutlineInputBorder? enabledBorder;
  OutlineInputBorder? focusedBorder;
  bool borderEnabled;
  Color? fillColor;
  bool filled;

  CustomTextFormField({
    super.key,
    this.textFormFieldStyle,
    this.hintText,
    this.hintTextStyle,
    this.labelText,
    this.labeTextStyle,
    this.onValidate,
    this.autovalidateMode,
    this.controller,
    this.keyboardType,
    this.prefixIcon,
    this.suffixIcon,
    this.border,
    this.errorBorder,
    this.borderEnabled=false,
    this.enabledBorder,
    this.focusedBorder,
    this.fillColor,
    this.filled=false,
    this.errortext,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      style: textFormFieldStyle,
      autovalidateMode: autovalidateMode,
      validator: onValidate,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: hintTextStyle,
        labelText: labelText,
        labelStyle: labeTextStyle,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        border: border,
        enabledBorder: enabledBorder,
        focusedBorder: focusedBorder,
        errorBorder: errorBorder,
        enabled: borderEnabled,
        fillColor: fillColor,
        filled: filled,
        errorText: errortext,
        errorStyle: errorTextStyle,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:testapp/core/presentation/theming/custom_colors.dart';

class FormTextInput extends StatelessWidget {
  final String? label;
  final String? hintText;
  final TextAlign? textAlign;
  final IconData? icon;
  final bool? secure;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final InputBorder? border;
  final InputBorder? errorBorder;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  const FormTextInput({
    Key? key,
    this.label,
    this.hintText,
    this.textAlign,
    this.icon,
    this.validator,
    this.controller,
    this.secure,
    this.border = const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.0))),
    this.errorBorder = const OutlineInputBorder(
      borderSide: BorderSide(
        color: CustomColors.mediumRed,
        width: 2,
      ),
    ),
    this.focusedBorder = const OutlineInputBorder(
      borderSide: BorderSide(
        color: CustomColors.mediumYellow,
        width: 2,
      ),
    ),
    this.enabledBorder = const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
      borderSide: BorderSide(
        color: CustomColors.brandColorGrey,
        width: 2,
      ),
    ),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        textAlign: textAlign ?? TextAlign.start,
        controller: controller,
        validator: validator,
        style: const TextStyle(
          color: CustomColors.brandColorGrey,
          fontSize: 14,
        ),
        obscureText: secure == true ? true : false,
        decoration: InputDecoration(
          isDense: true,
          contentPadding: const EdgeInsets.all(8),
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.white70,
          ),
          border: border,
          errorBorder: errorBorder,
          focusedBorder: focusedBorder,
          enabledBorder: enabledBorder,
          suffixIcon: icon != null
              ? Icon(
                  icon,
                  color: CustomColors.brandColorGrey,
                )
              : null,
          errorStyle: const TextStyle(fontSize: 14),
          label: label != null
              ? Text(
                  label!,
                  style: const TextStyle(color: Colors.white70),
                )
              : null,
        ),
      ),
    );
  }
}

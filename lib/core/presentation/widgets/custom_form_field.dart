import 'package:flutter/material.dart';
import 'package:testapp/core/presentation/theming/custom_colors.dart';

class CustomFormField extends StatelessWidget {
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
  final String? initialValue;
  final bool? isRequired;
  final Function(String?)? onSaved;
  const CustomFormField({
    Key? key,
    this.label,
    this.hintText,
    this.textAlign,
    this.icon,
    this.validator,
    this.controller,
    this.secure,
    this.initialValue,
    this.onSaved,
    this.isRequired,
    this.border = const OutlineInputBorder(),
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
      borderSide: BorderSide(
        color: CustomColors.brandColorGrey,
        width: 1,
      ),
    ),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null) ...[
          Text(
            label!,
            style: const TextStyle(
                color: CustomColors.darkBlue, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 4,
          ),
        ],
        TextFormField(
          initialValue: initialValue,
          textAlign: textAlign ?? TextAlign.start,
          controller: controller,
          validator: (value) {
            if (isRequired != null && isRequired == true) {
              if (value == null || value.isEmpty) {
                return '*field cannot be empty*';
              }
            }
            return null;
          },
          onSaved: onSaved,
          style: const TextStyle(
            color: CustomColors.brandColorGrey,
            fontSize: 14,
          ),
          obscureText: secure == true ? true : false,
          decoration: InputDecoration(
            isDense: true,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
            hintText: hintText,
            suffixIconConstraints: const BoxConstraints(maxHeight: 14),
            hintStyle: const TextStyle(
              color: Colors.white70,
            ),
            border: border,
            errorBorder: errorBorder,
            focusedBorder: focusedBorder,
            enabledBorder: enabledBorder,
            suffixIcon: icon != null
                ? Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Icon(
                      icon,
                      color: CustomColors.brandColorGrey,
                    ),
                  )
                : null,
            errorStyle: const TextStyle(fontSize: 14),
          ),
        ),
      ],
    );
  }
}

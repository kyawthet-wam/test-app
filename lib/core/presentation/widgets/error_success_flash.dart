import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:testapp/core/presentation/theming/custom_colors.dart';

void showErrorFlash(BuildContext context, String message) {
  showFlash(
    context: context,
    duration: const Duration(seconds: 4),
    builder: (context, controller) {
      return Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: Flash(
          backgroundColor: CustomColors.darkBlue,
          controller: controller,
          alignment: Alignment.bottomRight,
          child: FlashBar(
            icon: const Icon(
              Icons.error_outline_rounded,
              color: CustomColors.mediumYellow,
            ),
            content: Text(
              message,
              style: const TextStyle(
                color: CustomColors.bgWhite,
              ),
            ),
          ),
        ),
      );
    },
  );
}

void showSuccessFlash(BuildContext context, String message) {
  showFlash(
    context: context,
    duration: const Duration(seconds: 4),
    builder: (context, controller) {
      return Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: Flash(
          backgroundColor: CustomColors.darkBlue,
          controller: controller,
          alignment: Alignment.bottomRight,
          child: FlashBar(
            icon: const Icon(
              Icons.check_box_rounded,
              color: Colors.green,
            ),
            content: Text(
              message,
              style: const TextStyle(
                color: CustomColors.bgWhite,
              ),
            ),
          ),
        ),
      );
    },
  );
}

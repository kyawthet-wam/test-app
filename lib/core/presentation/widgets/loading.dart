import 'package:ant_icons/ant_icons.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:testapp/core/presentation/theming/custom_colors.dart';

void showLoadingFlash(BuildContext context, String message) {
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
            content: Row(
              children: [
                // Transform.scale(
                //   scale: 0.5,
                //   child: CircularProgressIndicator(),
                // ),
                SizedBox(
                  height: 20,
                  width: 20,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: CustomColors.mediumYellow,
                  ),
                ),
                const SizedBox(
                  width: 24,
                ),
                Text(
                  message,
                  style: const TextStyle(
                    color: CustomColors.bgWhite,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}

import 'package:ant_icons/ant_icons.dart';
import 'package:flutter/material.dart';
import 'package:testapp/core/presentation/theming/custom_colors.dart';

class LogoImage extends StatelessWidget {
  const LogoImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Icon(
      AntIcons.ant_cloud,
      color: CustomColors.lightBlue,
      size: 80,
    );
  }
}

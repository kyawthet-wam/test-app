import 'package:ant_icons/ant_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:testapp/auth/shared/providers.dart';
import 'package:testapp/core/presentation/theming/custom_colors.dart';
import 'package:testapp/core/presentation/theming/custom_theme.dart';

class GoogleSignInButton extends ConsumerWidget {
  const GoogleSignInButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(AntIcons.google_circle),
          SizedBox(width: 15),
          Text("Sign in with google"),
        ],
      ),
      style: CustomTheme.appTheme.elevatedButtonTheme.style!.copyWith(
          backgroundColor: MaterialStateProperty.all(CustomColors.bgWhite)),
      // padding: const EdgeInsets.symmetric(horizontal: 60),
      onPressed: () {
        ref.read(authNotifierProvider.notifier).signInWithGoogle();
      },
    );
  }
}

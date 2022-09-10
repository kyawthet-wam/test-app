import 'package:flutter/material.dart';
import 'package:testapp/core/presentation/widgets/logo_image.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: LogoImage(),
      ),
    );
  }
}

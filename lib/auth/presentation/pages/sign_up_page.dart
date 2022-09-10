import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:testapp/auth/application/auth_notifier.dart';
import 'package:testapp/auth/presentation/widgets/bottom_text_link.dart';
import 'package:testapp/auth/presentation/widgets/google_sign_in_button.dart';
import 'package:testapp/auth/presentation/widgets/sign_up_form.dart';
import 'package:testapp/auth/shared/providers.dart';
import 'package:testapp/core/presentation/widgets/error_success_flash.dart';
import 'package:testapp/core/presentation/widgets/logo_image.dart';

class SignUpPage extends ConsumerWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AuthState>(authNotifierProvider, (_, state) {
      state.maybeWhen(
          error: (failure) {
            failure.maybeWhen(
                noNetworkConnection: () =>
                    showErrorFlash(context, 'No Network Connection'),
                tooManyRequests: () =>
                    showErrorFlash(context, 'Too Many Requests'),
                emailInUse: () =>
                    showErrorFlash(context, 'Email Alreday In Use'),
                unexpectedError: () =>
                    showErrorFlash(context, 'An unexpected Error Occurred'),
                orElse: () {});
          },
          orElse: () {});
    });
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const LogoImage(),
                  const SizedBox(height: 20),
                  Text(
                    'Sign Up',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  const SizedBox(height: 40),
                  const SignUpForm(),
                  const SizedBox(height: 5),
                  const GoogleSignInButton(),
                  const SizedBox(height: 5),
                  BottomTextLink(
                    text: 'Already have an account?',
                    link: 'Sign in.',
                    onPressed: () => context.popRoute(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

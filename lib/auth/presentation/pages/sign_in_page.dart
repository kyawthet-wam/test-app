import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:testapp/auth/application/auth_notifier.dart';
import 'package:testapp/auth/presentation/widgets/bottom_text_link.dart';
import 'package:testapp/auth/presentation/widgets/google_sign_in_button.dart';
import 'package:testapp/auth/presentation/widgets/sign_in_form.dart';
import 'package:testapp/auth/shared/providers.dart';
import 'package:testapp/core/presentation/routes/app_router.gr.dart';
import 'package:testapp/core/presentation/widgets/error_success_flash.dart';
import 'package:testapp/core/presentation/widgets/logo_image.dart';

class SignInPage extends ConsumerWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AuthState>(authNotifierProvider, (_, state) {
      state.maybeWhen(
        error: (failure) {
          failure.maybeWhen(
              orElse: () {},
              noNetworkConnection: () =>
                  showErrorFlash(context, 'No Network Connection'),
              tooManyRequests: () =>
                  showErrorFlash(context, 'Too Many Requests'),
              userDisabled: () =>
                  showErrorFlash(context, 'This Account is Disabled'),
              invalidEmailAndPasswordCombination: () => showErrorFlash(
                  context, 'Invalid Email and Password Combination'),
              unexpectedError: () =>
                  showErrorFlash(context, 'An unexpected Error Occurred'),
              cancelledByUser: () =>
                  showErrorFlash(context, 'Cancelled By User'));
        },
        orElse: () {},
      );
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
                  const SizedBox(height: 30),
                  Text(
                    'Sign In',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  const SizedBox(height: 20),
                  const SignInForm(),
                  const GoogleSignInButton(),
                  const SizedBox(height: 5),
                  TextButton(
                    onPressed: () =>
                        context.pushRoute(const PasswordResetRoute()),
                    child: const Text(
                      'Forgot your password?',
                    ),
                  ),
                  BottomTextLink(
                    text: 'Don\'t have an account?',
                    link: 'Create now.',
                    onPressed: () => context.pushRoute(const SignUpRoute()),
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

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:testapp/auth/application/password_reset_notifier.dart';
import 'package:testapp/auth/presentation/widgets/password_reset_form.dart';
import 'package:testapp/auth/shared/providers.dart';
import 'package:testapp/core/presentation/widgets/error_success_flash.dart';
import 'package:testapp/core/presentation/widgets/logo_image.dart';

class PasswordResetPage extends ConsumerWidget {
  const PasswordResetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<PasswordResetState>(passwordResetNotifierProvider, (_, state) {
      state.maybeWhen(
          submitted: () {
            showSuccessFlash(context, 'Reset Email Sent');
            ref.read(passwordResetNotifierProvider.notifier).resetState();
            context.popRoute();
          },
          error: (failure) {
            failure.maybeWhen(
                emailDoesNotExist: () => showErrorFlash(
                    context, 'An Account with this Email Doesn\'t Exist'),
                noNetworkConnection: () =>
                    showErrorFlash(context, 'No Network Connection'),
                tooManyRequests: () =>
                    showErrorFlash(context, 'Too Many Requests'),
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
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const LogoImage(),
                  const SizedBox(height: 20),
                  Text(
                    'Reset Your Password',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const PasswordResetForm(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:testapp/auth/application/auth_notifier.dart';
import 'package:testapp/auth/shared/providers.dart';
import 'package:testapp/core/presentation/routes/app_router.gr.dart';
import 'package:testapp/core/presentation/theming/custom_theme.dart';

class AppWidget extends ConsumerWidget {
  AppWidget({Key? key}) : super(key: key);
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AuthState>(authNotifierProvider, (_, state) {
      state.maybeWhen(
        orElse: () {},
        authenticated: () async {
          final isEmailVerified = await ref
              .read(emailVerificationNotifierProvider.notifier)
              .isEmailVerified();
          if (!isEmailVerified) {
            _appRouter.pushAndPopUntil(
              const EmailVerificationRoute(),
              predicate: (_) => false,
            );
          } else {
            _appRouter.pushAndPopUntil(
              const CourseRoute(),
              predicate: (_) => false,
            );
          }
        },
        unauthenticated: () {
          _appRouter.pushAndPopUntil(
            const SignInRoute(),
            predicate: (_) => false,
          );
        },
      );
    });

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Test',
      theme: CustomTheme.appTheme,
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
    );
  }
}

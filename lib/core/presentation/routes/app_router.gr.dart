// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../../../auth/presentation/pages/email_verification_page.dart' as _i5;
import '../../../auth/presentation/pages/password_reset_page.dart' as _i4;
import '../../../auth/presentation/pages/sign_in_page.dart' as _i3;
import '../../../auth/presentation/pages/sign_up_page.dart' as _i2;
import '../../../course/presentation/course_form_page.dart' as _i7;
import '../../../course/presentation/course_page.dart' as _i6;
import '../../../splash/presentation/splash_page.dart' as _i1;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    SignUpRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SignUpPage());
    },
    SignInRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SignInPage());
    },
    PasswordResetRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.PasswordResetPage());
    },
    EmailVerificationRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.EmailVerificationPage());
    },
    CourseRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.CoursePage());
    },
    CourseFormRoute.name: (routeData) {
      final args = routeData.argsAs<CourseFormRouteArgs>(
          orElse: () => const CourseFormRouteArgs());
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: _i7.CourseFormPage(key: args.key));
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(SplashRoute.name, path: '/'),
        _i8.RouteConfig(SignUpRoute.name, path: '/sign-up'),
        _i8.RouteConfig(SignInRoute.name, path: '/sign-in'),
        _i8.RouteConfig(PasswordResetRoute.name, path: '/password-reset'),
        _i8.RouteConfig(EmailVerificationRoute.name,
            path: '/email-verification'),
        _i8.RouteConfig(CourseRoute.name, path: '/course'),
        _i8.RouteConfig(CourseFormRoute.name, path: '/course-form')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i8.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.SignUpPage]
class SignUpRoute extends _i8.PageRouteInfo<void> {
  const SignUpRoute() : super(SignUpRoute.name, path: '/sign-up');

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i3.SignInPage]
class SignInRoute extends _i8.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: '/sign-in');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i4.PasswordResetPage]
class PasswordResetRoute extends _i8.PageRouteInfo<void> {
  const PasswordResetRoute()
      : super(PasswordResetRoute.name, path: '/password-reset');

  static const String name = 'PasswordResetRoute';
}

/// generated route for
/// [_i5.EmailVerificationPage]
class EmailVerificationRoute extends _i8.PageRouteInfo<void> {
  const EmailVerificationRoute()
      : super(EmailVerificationRoute.name, path: '/email-verification');

  static const String name = 'EmailVerificationRoute';
}

/// generated route for
/// [_i6.CoursePage]
class CourseRoute extends _i8.PageRouteInfo<void> {
  const CourseRoute() : super(CourseRoute.name, path: '/course');

  static const String name = 'CourseRoute';
}

/// generated route for
/// [_i7.CourseFormPage]
class CourseFormRoute extends _i8.PageRouteInfo<CourseFormRouteArgs> {
  CourseFormRoute({dynamic key})
      : super(CourseFormRoute.name,
            path: '/course-form', args: CourseFormRouteArgs(key: key));

  static const String name = 'CourseFormRoute';
}

class CourseFormRouteArgs {
  const CourseFormRouteArgs({this.key});

  final dynamic key;

  @override
  String toString() {
    return 'CourseFormRouteArgs{key: $key}';
  }
}

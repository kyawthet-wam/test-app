import 'package:auto_route/auto_route.dart';
import 'package:testapp/auth/presentation/pages/email_verification_page.dart';
import 'package:testapp/auth/presentation/pages/password_reset_page.dart';
import 'package:testapp/auth/presentation/pages/sign_in_page.dart';
import 'package:testapp/auth/presentation/pages/sign_up_page.dart';
import 'package:testapp/course/presentation/course_form_page.dart';
import 'package:testapp/course/presentation/course_page.dart';
import 'package:testapp/splash/presentation/splash_page.dart';

@MaterialAutoRouter(
  routes: [
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: SignUpPage, path: '/sign-up'),
    MaterialRoute(page: SignInPage, path: '/sign-in'),
    MaterialRoute(page: PasswordResetPage, path: '/password-reset'),
    MaterialRoute(page: EmailVerificationPage, path: '/email-verification'),
    MaterialRoute(page: CoursePage, path: '/course'),
    MaterialRoute(page: CourseFormPage, path: '/course-form'),
  ],
  replaceInRouteName: 'Page,Route',
)
class $AppRouter {}

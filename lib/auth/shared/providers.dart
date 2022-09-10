import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:testapp/auth/application/auth_notifier.dart';
import 'package:testapp/auth/application/email_verification_notifier.dart';
import 'package:testapp/auth/application/password_reset_notifier.dart';
import 'package:testapp/auth/infrastructure/auth_repository.dart';
import 'package:testapp/auth/infrastructure/firebase_user_mapper.dart';

final firebaseAuthProvider = Provider((ref) => FirebaseAuth.instance);
final googleSignInProvider = Provider((ref) => GoogleSignIn());
final firebaseUserMapperProvider = Provider((ref) => FirebaseUserMapper());

final authRepositoryProvider = Provider(
  (ref) => AuthRepository(
    ref.watch(firebaseAuthProvider),
    ref.watch(googleSignInProvider),
    ref.watch(firebaseUserMapperProvider),
  ),
);

final authNotifierProvider = StateNotifierProvider<AuthNotifier, AuthState>(
  (ref) => AuthNotifier(
    ref.watch(authRepositoryProvider),
  ),
);

final passwordResetNotifierProvider =
    StateNotifierProvider<PasswordResetNotifier, PasswordResetState>(
  (ref) => PasswordResetNotifier(
    ref.watch(authRepositoryProvider),
  ),
);

final emailVerificationNotifierProvider =
    StateNotifierProvider<EmailVerificationNotifier, EmailVerificationState>(
  (ref) => EmailVerificationNotifier(
    ref.watch(authRepositoryProvider),
  ),
);

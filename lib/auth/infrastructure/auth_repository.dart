import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:testapp/auth/domain/auth_failure.dart';
import 'package:testapp/auth/infrastructure/firebase_user_mapper.dart';
import '../domain/user.dart' as my_user;

class AuthRepository {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final FirebaseUserMapper _firebaseUserMapper;

  AuthRepository(
    this._firebaseAuth,
    this._googleSignIn,
    this._firebaseUserMapper,
  );

  Stream<User?> authStateChanges() => _firebaseAuth.authStateChanges();

  User? get _currentUser => _firebaseAuth.currentUser;

  Future<Option<my_user.User>> getSignedInUser() async {
    return optionOf(_firebaseUserMapper.toDomain(_currentUser!));
  }

  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      final credentials = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await credentials.user?.sendEmailVerification();
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailInUse());
      } else if (e.code == 'network-request-failed') {
        return left(const AuthFailure.noNetworkConnection());
      } else if (e.code == 'too-many-requests') {
        return left(const AuthFailure.tooManyRequests());
      } else {
        return left(const AuthFailure.unexpectedError());
      }
    } on PlatformException {
      return left(const AuthFailure.unexpectedError());
    }
  }

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-disabled') {
        return left(const AuthFailure.userDisabled());
      } else if (e.code == 'wrong-password' || e.code == 'user-not-found') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else if (e.code == 'too-many-requests') {
        return left(const AuthFailure.tooManyRequests());
      } else if (e.code == 'network-request-failed') {
        return left(const AuthFailure.noNetworkConnection());
      } else {
        return left(const AuthFailure.unexpectedError());
      }
    } on PlatformException {
      return left(const AuthFailure.unexpectedError());
    }
  }

  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final signInAccount = await _googleSignIn.signIn();

      if (signInAccount != null) {
        final authentication = await signInAccount.authentication;

        final credential = GoogleAuthProvider.credential(
          accessToken: authentication.accessToken,
          idToken: authentication.idToken,
        );
        await _firebaseAuth.signInWithCredential(credential);

        return right(unit);
      }
      return left(const AuthFailure.cancelledByUser());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'too-many-requests') {
        return left(const AuthFailure.tooManyRequests());
      } else if (e.code == 'network-request-failed') {
        return left(const AuthFailure.noNetworkConnection());
      } else {
        return left(const AuthFailure.unexpectedError());
      }
    } on PlatformException catch (e) {
      return left(const AuthFailure.unexpectedError());
    }
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
    await _googleSignIn.signOut();
  }

  Future<Either<AuthFailure, bool>> isUserEmailVerified() async {
    try {
      await _currentUser!.reload();
      return right(_currentUser!.emailVerified);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'network-request-failed') {
        return left(const AuthFailure.noNetworkConnection());
      } else {
        return left(const AuthFailure.unexpectedError());
      }
    } on PlatformException {
      return left(const AuthFailure.unexpectedError());
    }
  }

  Future<Either<AuthFailure, Unit>> resendVerificationEmail() async {
    try {
      await _currentUser!.sendEmailVerification();
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'too-many-requests') {
        return left(const AuthFailure.tooManyRequests());
      } else if (e.code == 'network-request-failed') {
        return left(const AuthFailure.noNetworkConnection());
      } else {
        return left(const AuthFailure.unexpectedError());
      }
    } on PlatformException {
      return left(const AuthFailure.unexpectedError());
    }
  }

  Future<Either<AuthFailure, Unit>> sendPasswordResetEmail(String email) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'too-many-requests') {
        return left(const AuthFailure.tooManyRequests());
      } else if (e.code == 'network-request-failed') {
        return left(const AuthFailure.noNetworkConnection());
      } else if (e.code == 'user-not-found') {
        return left(const AuthFailure.emailDoesNotExist());
      } else {
        return left(const AuthFailure.unexpectedError());
      }
    } on PlatformException {
      return left(const AuthFailure.unexpectedError());
    }
  }
}

import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testapp/auth/domain/auth_failure.dart';
import 'package:testapp/auth/infrastructure/auth_repository.dart';
part 'auth_notifier.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();
  const factory AuthState.initial() = _Initial;
  const factory AuthState.authenticated() = _Authenticated;
  const factory AuthState.unauthenticated() = _Unauthenticated;
  const factory AuthState.error(AuthFailure failure) = _Error;
}

class AuthNotifier extends StateNotifier<AuthState> {
  final AuthRepository _authRepository;
  late StreamSubscription<User?> _authStateChangesSubscription;
  AuthNotifier(this._authRepository) : super(const AuthState.initial()) {
    _authStateChangesSubscription =
        _authRepository.authStateChanges().listen((user) {
      if (user != null) {
        state = const AuthState.authenticated();
      } else {
        state = const AuthState.unauthenticated();
      }
    });
  }
  Future<void> registerWithEmailAndPassword(
      String email, String password) async {
    final failureOrSuccess = await _authRepository.registerWithEmailAndPassword(
      email,
      password,
    );
    failureOrSuccess.fold(
        (failure) => state = AuthState.error(failure), (r) {});
  }

  Future<void> signInWithEmailAndPassword(String email, String password) async {
    final failureOrSuccess = await _authRepository.signInWithEmailAndPassword(
      email,
      password,
    );
    failureOrSuccess.fold(
        (failure) => state = AuthState.error(failure), (r) {});
  }

  Future<void> signInWithGoogle() async {
    final failureOrSuccess = await _authRepository.signInWithGoogle();
    failureOrSuccess.fold(
        (failure) => state = AuthState.error(failure), (r) {});
  }

  Future<void> signOut() async {
    await _authRepository.signOut();
  }

  @override
  void dispose() {
    super.dispose();
    _authStateChangesSubscription.cancel();
  }
}

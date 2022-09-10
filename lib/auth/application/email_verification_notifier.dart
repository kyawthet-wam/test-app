import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testapp/auth/domain/auth_failure.dart';
import 'package:testapp/auth/infrastructure/auth_repository.dart';
part 'email_verification_notifier.freezed.dart';

@freezed
class EmailVerificationState with _$EmailVerificationState {
  const EmailVerificationState._();
  const factory EmailVerificationState.initial() = _Initial;
  const factory EmailVerificationState.submitted() = _Submitted;
  const factory EmailVerificationState.error(AuthFailure failure) = _Error;
}

class EmailVerificationNotifier extends StateNotifier<EmailVerificationState> {
  final AuthRepository _authRepository;
  EmailVerificationNotifier(this._authRepository)
      : super(const EmailVerificationState.initial());

  Future<bool> isEmailVerified() async {
    final failureOrSuccess = await _authRepository.isUserEmailVerified();
    return failureOrSuccess.fold((failure) {
      state = EmailVerificationState.error(failure);
      return false;
    }, (r) => r);
  }

  Future<void> resendVerificationEmail() async {
    final failureOrSuccess = await _authRepository.resendVerificationEmail();
    failureOrSuccess.fold(
        (failure) => state = EmailVerificationState.error(failure),
        (r) => state = const EmailVerificationState.submitted());
  }
}

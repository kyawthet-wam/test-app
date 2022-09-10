// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'course_form_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CourseFormStateTearOff {
  const _$CourseFormStateTearOff();

  _Initial inital() {
    return const _Initial();
  }

  _Saving saving() {
    return const _Saving();
  }

  _Saved saved() {
    return const _Saved();
  }

  _Error error(Failure failure) {
    return _Error(
      failure,
    );
  }
}

/// @nodoc
const $CourseFormState = _$CourseFormStateTearOff();

/// @nodoc
mixin _$CourseFormState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inital,
    required TResult Function() saving,
    required TResult Function() saved,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inital,
    TResult Function()? saving,
    TResult Function()? saved,
    TResult Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inital,
    TResult Function()? saving,
    TResult Function()? saved,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) inital,
    required TResult Function(_Saving value) saving,
    required TResult Function(_Saved value) saved,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? inital,
    TResult Function(_Saving value)? saving,
    TResult Function(_Saved value)? saved,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? inital,
    TResult Function(_Saving value)? saving,
    TResult Function(_Saved value)? saved,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseFormStateCopyWith<$Res> {
  factory $CourseFormStateCopyWith(
          CourseFormState value, $Res Function(CourseFormState) then) =
      _$CourseFormStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CourseFormStateCopyWithImpl<$Res>
    implements $CourseFormStateCopyWith<$Res> {
  _$CourseFormStateCopyWithImpl(this._value, this._then);

  final CourseFormState _value;
  // ignore: unused_field
  final $Res Function(CourseFormState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$CourseFormStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial() : super._();

  @override
  String toString() {
    return 'CourseFormState.inital()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inital,
    required TResult Function() saving,
    required TResult Function() saved,
    required TResult Function(Failure failure) error,
  }) {
    return inital();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inital,
    TResult Function()? saving,
    TResult Function()? saved,
    TResult Function(Failure failure)? error,
  }) {
    return inital?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inital,
    TResult Function()? saving,
    TResult Function()? saved,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (inital != null) {
      return inital();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) inital,
    required TResult Function(_Saving value) saving,
    required TResult Function(_Saved value) saved,
    required TResult Function(_Error value) error,
  }) {
    return inital(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? inital,
    TResult Function(_Saving value)? saving,
    TResult Function(_Saved value)? saved,
    TResult Function(_Error value)? error,
  }) {
    return inital?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? inital,
    TResult Function(_Saving value)? saving,
    TResult Function(_Saved value)? saved,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (inital != null) {
      return inital(this);
    }
    return orElse();
  }
}

abstract class _Initial extends CourseFormState {
  const factory _Initial() = _$_Initial;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$SavingCopyWith<$Res> {
  factory _$SavingCopyWith(_Saving value, $Res Function(_Saving) then) =
      __$SavingCopyWithImpl<$Res>;
}

/// @nodoc
class __$SavingCopyWithImpl<$Res> extends _$CourseFormStateCopyWithImpl<$Res>
    implements _$SavingCopyWith<$Res> {
  __$SavingCopyWithImpl(_Saving _value, $Res Function(_Saving) _then)
      : super(_value, (v) => _then(v as _Saving));

  @override
  _Saving get _value => super._value as _Saving;
}

/// @nodoc

class _$_Saving extends _Saving {
  const _$_Saving() : super._();

  @override
  String toString() {
    return 'CourseFormState.saving()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Saving);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inital,
    required TResult Function() saving,
    required TResult Function() saved,
    required TResult Function(Failure failure) error,
  }) {
    return saving();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inital,
    TResult Function()? saving,
    TResult Function()? saved,
    TResult Function(Failure failure)? error,
  }) {
    return saving?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inital,
    TResult Function()? saving,
    TResult Function()? saved,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (saving != null) {
      return saving();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) inital,
    required TResult Function(_Saving value) saving,
    required TResult Function(_Saved value) saved,
    required TResult Function(_Error value) error,
  }) {
    return saving(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? inital,
    TResult Function(_Saving value)? saving,
    TResult Function(_Saved value)? saved,
    TResult Function(_Error value)? error,
  }) {
    return saving?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? inital,
    TResult Function(_Saving value)? saving,
    TResult Function(_Saved value)? saved,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (saving != null) {
      return saving(this);
    }
    return orElse();
  }
}

abstract class _Saving extends CourseFormState {
  const factory _Saving() = _$_Saving;
  const _Saving._() : super._();
}

/// @nodoc
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SavedCopyWithImpl<$Res> extends _$CourseFormStateCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

/// @nodoc

class _$_Saved extends _Saved {
  const _$_Saved() : super._();

  @override
  String toString() {
    return 'CourseFormState.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inital,
    required TResult Function() saving,
    required TResult Function() saved,
    required TResult Function(Failure failure) error,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inital,
    TResult Function()? saving,
    TResult Function()? saved,
    TResult Function(Failure failure)? error,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inital,
    TResult Function()? saving,
    TResult Function()? saved,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) inital,
    required TResult Function(_Saving value) saving,
    required TResult Function(_Saved value) saved,
    required TResult Function(_Error value) error,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? inital,
    TResult Function(_Saving value)? saving,
    TResult Function(_Saved value)? saved,
    TResult Function(_Error value)? error,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? inital,
    TResult Function(_Saving value)? saving,
    TResult Function(_Saved value)? saved,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved extends CourseFormState {
  const factory _Saved() = _$_Saved;
  const _Saved._() : super._();
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$CourseFormStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_Error(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_Error extends _Error {
  const _$_Error(this.failure) : super._();

  @override
  final Failure failure;

  @override
  String toString() {
    return 'CourseFormState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inital,
    required TResult Function() saving,
    required TResult Function() saved,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inital,
    TResult Function()? saving,
    TResult Function()? saved,
    TResult Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inital,
    TResult Function()? saving,
    TResult Function()? saved,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) inital,
    required TResult Function(_Saving value) saving,
    required TResult Function(_Saved value) saved,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? inital,
    TResult Function(_Saving value)? saving,
    TResult Function(_Saved value)? saved,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? inital,
    TResult Function(_Saving value)? saving,
    TResult Function(_Saved value)? saved,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error extends CourseFormState {
  const factory _Error(Failure failure) = _$_Error;
  const _Error._() : super._();

  Failure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FailureTearOff {
  const _$FailureTearOff();

  Unexpected unexpected() {
    return const Unexpected();
  }

  InsufficientPermissions insufficientPermissions() {
    return const InsufficientPermissions();
  }

  UnableToUpdate unableToUpdate() {
    return const UnableToUpdate();
  }
}

/// @nodoc
const $Failure = _$FailureTearOff();

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() insufficientPermissions,
    required TResult Function() unableToUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? unableToUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? unableToUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(InsufficientPermissions value)
        insufficientPermissions,
    required TResult Function(UnableToUpdate value) unableToUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(InsufficientPermissions value)? insufficientPermissions,
    TResult Function(UnableToUpdate value)? unableToUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(InsufficientPermissions value)? insufficientPermissions,
    TResult Function(UnableToUpdate value)? unableToUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;
}

/// @nodoc
abstract class $UnexpectedCopyWith<$Res> {
  factory $UnexpectedCopyWith(
          Unexpected value, $Res Function(Unexpected) then) =
      _$UnexpectedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnexpectedCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $UnexpectedCopyWith<$Res> {
  _$UnexpectedCopyWithImpl(Unexpected _value, $Res Function(Unexpected) _then)
      : super(_value, (v) => _then(v as Unexpected));

  @override
  Unexpected get _value => super._value as Unexpected;
}

/// @nodoc

class _$Unexpected implements Unexpected {
  const _$Unexpected();

  @override
  String toString() {
    return 'Failure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Unexpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() insufficientPermissions,
    required TResult Function() unableToUpdate,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? unableToUpdate,
  }) {
    return unexpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? unableToUpdate,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(InsufficientPermissions value)
        insufficientPermissions,
    required TResult Function(UnableToUpdate value) unableToUpdate,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(InsufficientPermissions value)? insufficientPermissions,
    TResult Function(UnableToUpdate value)? unableToUpdate,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(InsufficientPermissions value)? insufficientPermissions,
    TResult Function(UnableToUpdate value)? unableToUpdate,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class Unexpected implements Failure {
  const factory Unexpected() = _$Unexpected;
}

/// @nodoc
abstract class $InsufficientPermissionsCopyWith<$Res> {
  factory $InsufficientPermissionsCopyWith(InsufficientPermissions value,
          $Res Function(InsufficientPermissions) then) =
      _$InsufficientPermissionsCopyWithImpl<$Res>;
}

/// @nodoc
class _$InsufficientPermissionsCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res>
    implements $InsufficientPermissionsCopyWith<$Res> {
  _$InsufficientPermissionsCopyWithImpl(InsufficientPermissions _value,
      $Res Function(InsufficientPermissions) _then)
      : super(_value, (v) => _then(v as InsufficientPermissions));

  @override
  InsufficientPermissions get _value => super._value as InsufficientPermissions;
}

/// @nodoc

class _$InsufficientPermissions implements InsufficientPermissions {
  const _$InsufficientPermissions();

  @override
  String toString() {
    return 'Failure.insufficientPermissions()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InsufficientPermissions);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() insufficientPermissions,
    required TResult Function() unableToUpdate,
  }) {
    return insufficientPermissions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? unableToUpdate,
  }) {
    return insufficientPermissions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? unableToUpdate,
    required TResult orElse(),
  }) {
    if (insufficientPermissions != null) {
      return insufficientPermissions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(InsufficientPermissions value)
        insufficientPermissions,
    required TResult Function(UnableToUpdate value) unableToUpdate,
  }) {
    return insufficientPermissions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(InsufficientPermissions value)? insufficientPermissions,
    TResult Function(UnableToUpdate value)? unableToUpdate,
  }) {
    return insufficientPermissions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(InsufficientPermissions value)? insufficientPermissions,
    TResult Function(UnableToUpdate value)? unableToUpdate,
    required TResult orElse(),
  }) {
    if (insufficientPermissions != null) {
      return insufficientPermissions(this);
    }
    return orElse();
  }
}

abstract class InsufficientPermissions implements Failure {
  const factory InsufficientPermissions() = _$InsufficientPermissions;
}

/// @nodoc
abstract class $UnableToUpdateCopyWith<$Res> {
  factory $UnableToUpdateCopyWith(
          UnableToUpdate value, $Res Function(UnableToUpdate) then) =
      _$UnableToUpdateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnableToUpdateCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $UnableToUpdateCopyWith<$Res> {
  _$UnableToUpdateCopyWithImpl(
      UnableToUpdate _value, $Res Function(UnableToUpdate) _then)
      : super(_value, (v) => _then(v as UnableToUpdate));

  @override
  UnableToUpdate get _value => super._value as UnableToUpdate;
}

/// @nodoc

class _$UnableToUpdate implements UnableToUpdate {
  const _$UnableToUpdate();

  @override
  String toString() {
    return 'Failure.unableToUpdate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnableToUpdate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() insufficientPermissions,
    required TResult Function() unableToUpdate,
  }) {
    return unableToUpdate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? unableToUpdate,
  }) {
    return unableToUpdate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? unableToUpdate,
    required TResult orElse(),
  }) {
    if (unableToUpdate != null) {
      return unableToUpdate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(InsufficientPermissions value)
        insufficientPermissions,
    required TResult Function(UnableToUpdate value) unableToUpdate,
  }) {
    return unableToUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(InsufficientPermissions value)? insufficientPermissions,
    TResult Function(UnableToUpdate value)? unableToUpdate,
  }) {
    return unableToUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(InsufficientPermissions value)? insufficientPermissions,
    TResult Function(UnableToUpdate value)? unableToUpdate,
    required TResult orElse(),
  }) {
    if (unableToUpdate != null) {
      return unableToUpdate(this);
    }
    return orElse();
  }
}

abstract class UnableToUpdate implements Failure {
  const factory UnableToUpdate() = _$UnableToUpdate;
}

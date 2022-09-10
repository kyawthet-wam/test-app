// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'course_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CourseDTO _$CourseDTOFromJson(Map<String, dynamic> json) {
  return _CourseDTO.fromJson(json);
}

/// @nodoc
class _$CourseDTOTearOff {
  const _$CourseDTOTearOff();

  _CourseDTO call(
      {required String id, required String name, required String icon}) {
    return _CourseDTO(
      id: id,
      name: name,
      icon: icon,
    );
  }

  CourseDTO fromJson(Map<String, Object> json) {
    return CourseDTO.fromJson(json);
  }
}

/// @nodoc
const $CourseDTO = _$CourseDTOTearOff();

/// @nodoc
mixin _$CourseDTO {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseDTOCopyWith<CourseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseDTOCopyWith<$Res> {
  factory $CourseDTOCopyWith(CourseDTO value, $Res Function(CourseDTO) then) =
      _$CourseDTOCopyWithImpl<$Res>;
  $Res call({String id, String name, String icon});
}

/// @nodoc
class _$CourseDTOCopyWithImpl<$Res> implements $CourseDTOCopyWith<$Res> {
  _$CourseDTOCopyWithImpl(this._value, this._then);

  final CourseDTO _value;
  // ignore: unused_field
  final $Res Function(CourseDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CourseDTOCopyWith<$Res> implements $CourseDTOCopyWith<$Res> {
  factory _$CourseDTOCopyWith(
          _CourseDTO value, $Res Function(_CourseDTO) then) =
      __$CourseDTOCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String icon});
}

/// @nodoc
class __$CourseDTOCopyWithImpl<$Res> extends _$CourseDTOCopyWithImpl<$Res>
    implements _$CourseDTOCopyWith<$Res> {
  __$CourseDTOCopyWithImpl(_CourseDTO _value, $Res Function(_CourseDTO) _then)
      : super(_value, (v) => _then(v as _CourseDTO));

  @override
  _CourseDTO get _value => super._value as _CourseDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? icon = freezed,
  }) {
    return _then(_CourseDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CourseDTO extends _CourseDTO {
  const _$_CourseDTO({required this.id, required this.name, required this.icon})
      : super._();

  factory _$_CourseDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CourseDTOFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String icon;

  @override
  String toString() {
    return 'CourseDTO(id: $id, name: $name, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CourseDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(icon);

  @JsonKey(ignore: true)
  @override
  _$CourseDTOCopyWith<_CourseDTO> get copyWith =>
      __$CourseDTOCopyWithImpl<_CourseDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CourseDTOToJson(this);
  }
}

abstract class _CourseDTO extends CourseDTO {
  const factory _CourseDTO(
      {required String id,
      required String name,
      required String icon}) = _$_CourseDTO;
  const _CourseDTO._() : super._();

  factory _CourseDTO.fromJson(Map<String, dynamic> json) =
      _$_CourseDTO.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get icon => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CourseDTOCopyWith<_CourseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

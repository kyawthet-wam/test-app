import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'course.freezed.dart';

@freezed
class Course with _$Course {
  const factory Course({
    @Default('') String id,
    @Default('') String name,
    @Default('0xe146') String icon,
  }) = _Course;
}

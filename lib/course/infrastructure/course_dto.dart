import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testapp/course/domain/course.dart';
part 'course_dto.freezed.dart';
part 'course_dto.g.dart';

@freezed
class CourseDTO with _$CourseDTO {
  const CourseDTO._();
  const factory CourseDTO({
    required String id,
    required String name,
    required String icon,
  }) = _CourseDTO;

  factory CourseDTO.fromJson(Map<String, dynamic> json) =>
      _$CourseDTOFromJson(json);

  factory CourseDTO.fromDomain(Course _) {
    return CourseDTO(
      id: _.id,
      name: _.name,
      icon: _.icon,
    );
  }

  Course toDomain() {
    return Course(
      id: id,
      name: name,
      icon: icon,
    );
  }
}

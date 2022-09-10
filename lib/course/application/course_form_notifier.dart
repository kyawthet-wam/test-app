import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:testapp/core/domain/failure.dart';
import 'package:testapp/course/domain/course.dart';
import 'package:testapp/course/infrastructure/course_repository.dart';
part 'course_form_notifier.freezed.dart';

@freezed
abstract class CourseFormState with _$CourseFormState {
  const CourseFormState._();
  const factory CourseFormState.inital() = _Initial;
  const factory CourseFormState.saving() = _Saving;
  const factory CourseFormState.saved() = _Saved;
  const factory CourseFormState.error(Failure failure) = _Error;
}

class CourseFormNotifier extends StateNotifier<CourseFormState> {
  final CourseRepository _courseRepository;
  CourseFormNotifier(this._courseRepository)
      : super(const CourseFormState.inital());

  Future<void> create(Course course) async {
    final failureOrSuccess = await _courseRepository.create(course: course);
    state = const CourseFormState.saving();
    state = failureOrSuccess.fold((failure) => CourseFormState.error(failure),
        (r) => const CourseFormState.saved());
  }

  Future<void> update(Course course) async {
    final failureOrSuccess = await _courseRepository.update(course: course);
    state = const CourseFormState.saving();
    state = failureOrSuccess.fold((failure) => CourseFormState.error(failure),
        (r) => const CourseFormState.saved());
  }

  Future<void> delete(String courseId) async {
    final failureOrSuccess = await _courseRepository.delete(courseId: courseId);
    state = const CourseFormState.saving();
    state = failureOrSuccess.fold((failure) => CourseFormState.error(failure),
        (r) => const CourseFormState.saved());
  }
}

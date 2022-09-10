import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:testapp/core/domain/failure.dart';
import 'package:testapp/course/domain/course.dart';
import 'package:testapp/course/infrastructure/course_repository.dart';
part 'course_watcher_notifier.freezed.dart';

@freezed
abstract class CourseWatcherState with _$CourseWatcherState {
  const CourseWatcherState._();
  const factory CourseWatcherState.initial() = Initial;
  const factory CourseWatcherState.loadInProgress() = DataTransferInProgress;
  const factory CourseWatcherState.loadSuccess(List<Course> courses) =
      LoadSuccess;
  const factory CourseWatcherState.loadFailure(Failure failure) = LoadFailure;
}

class CourseWatcherNotifier extends StateNotifier<CourseWatcherState> {
  final CourseRepository _courseRepository;

  late StreamSubscription<Either<Failure, List<Course>>>
      _courseStreamSubscription;

  CourseWatcherNotifier(this._courseRepository)
      : super(const CourseWatcherState.initial()) {
    _courseStreamSubscription =
        _courseRepository.watchAll().listen((event) async {
      state = const CourseWatcherState.loadInProgress();
      await Future.delayed(const Duration(seconds: 2), () {
        state = event.fold((failure) => CourseWatcherState.loadFailure(failure),
            (courseList) => CourseWatcherState.loadSuccess(courseList));
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _courseStreamSubscription.cancel();
  }
}

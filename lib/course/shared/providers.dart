import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:testapp/course/application/course_form_notifier.dart';
import 'package:testapp/course/application/course_state_notifier.dart';
import 'package:testapp/course/application/course_watcher_notifier.dart';
import 'package:testapp/course/domain/course.dart';
import 'package:testapp/course/infrastructure/course_repository.dart';

final firebaseFirestoreProvider = Provider((_) => FirebaseFirestore.instance);
final firebaseeStorageProvider = Provider((_) => FirebaseStorage.instance);

final courseRepositoryProvider = Provider((ref) {
  return CourseRepository(ref.watch(firebaseFirestoreProvider),
      ref.watch(firebaseeStorageProvider));
});

final courseWatcherProvider = StateNotifierProvider.autoDispose<
    CourseWatcherNotifier, CourseWatcherState>((ref) {
  return CourseWatcherNotifier(ref.watch(courseRepositoryProvider));
});

final courseFormProvider =
    StateNotifierProvider<CourseFormNotifier, CourseFormState>((ref) {
  return CourseFormNotifier(ref.watch(courseRepositoryProvider));
});

final courseStateProvider =
    StateNotifierProvider.autoDispose<CourseStateNotifier, Course>((ref) {
  return CourseStateNotifier();
});

final iconProvider = StateProvider<Icon?>((ref) => null);

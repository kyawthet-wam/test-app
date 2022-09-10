import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:testapp/course/domain/course.dart';

class CourseStateNotifier extends StateNotifier<Course> {
  CourseStateNotifier() : super(const Course());

  String get id => state.id;
  String get name => state.name;
  String get icon => state.icon;

  void setId(String id) {
    state = state.copyWith(id: id);
  }

  void setName(String name) {
    state = state.copyWith(name: name);
  }

  void setIcon(String icon) {
    state = state.copyWith(icon: icon);
  }
}

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:testapp/core/presentation/widgets/critical_failure_display_widget.dart';
import 'package:testapp/core/presentation/widgets/logo_image.dart';

import 'package:testapp/course/presentation/widgets/course_card_widget.dart';
import 'package:testapp/course/shared/providers.dart';

class CourseWidget extends ConsumerWidget {
  const CourseWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final courseListStateProvider = ref.watch(courseWatcherProvider);
    return Center(
        child: courseListStateProvider.map(
      initial: (d) => Container(),
      loadInProgress: (s) => const CircularProgressIndicator(),
      loadFailure: (f) => CriticalFailureDisplay(failure: f.failure),
      loadSuccess: (c) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 8.0,
              children: List.generate(c.courses.length, (index) {
                return Center(
                  child: CourseCard(course: c.courses[index]),
                );
              })),
        );
      },
    ));
  }
}

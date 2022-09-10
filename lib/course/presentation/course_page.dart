import 'package:ant_icons/ant_icons.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:testapp/core/presentation/routes/app_router.gr.dart';
import 'package:testapp/course/presentation/widgets/course_widget.dart';

class CoursePage extends ConsumerWidget {
  const CoursePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Courses"),
        actions: [
          IconButton(
            onPressed: () {
              AutoRouter.of(context).push(CourseFormRoute());
            },
            icon: const Icon(AntIcons.file_add),
          ),
        ],
      ),
      body: const CourseWidget(),
    );
  }
}

import 'package:ant_icons/ant_icons.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:testapp/core/presentation/widgets/custom_button.dart';
import 'package:testapp/core/presentation/widgets/custom_form_field.dart';
import 'package:testapp/core/presentation/widgets/error_success_flash.dart';
import 'package:testapp/core/presentation/widgets/icon_picker.dart';
import 'package:testapp/core/presentation/widgets/loading.dart';
import 'package:testapp/course/application/course_form_notifier.dart';
import 'package:testapp/course/domain/course.dart';
import 'package:testapp/course/shared/providers.dart';

class CourseFormPage extends ConsumerWidget {
  const CourseFormPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _formkey = GlobalKey<FormState>();
    ref.listen<CourseFormState>(courseFormProvider, (_, state) {
      state.maybeWhen(
          saving: () {},
          saved: () {
            showSuccessFlash(context, "Success");
            AutoRouter.of(context).pop();
          },
          error: (failure) {
            showErrorFlash(
              context,
              failure.when(
                unexpected: () => "Unexpected Error.",
                insufficientPermissions: () => "Insufficient Permissions",
                unableToUpdate: () => "Unable to Update.",
              ),
            );
            AutoRouter.of(context).pop();
          },
          orElse: () {});
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Course"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  height: 16,
                ),
                CustomFormField(
                  label: "Name",
                  isRequired: true,
                  onSaved: (v) {
                    ref.read(courseStateProvider.notifier).setName(v!);
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                const IconPicker(),
                const SizedBox(
                  height: 32,
                ),
                CustomButton(
                    text: "Save",
                    onPressed: () {
                      showLoadingFlash(context, "Saving . . . .");
                      // showSuccessFlash(context, "Success");
                      // showErrorFlash(context, "Error");
                      // if (ref.watch(iconProvider) == null) {
                      //   ref.read(errorProvider.notifier).state = true;
                      // }
                      // if (_formkey.currentState!.validate() == true &&
                      //     ref.watch(errorProvider)) {
                      //   final course = Course(
                      //       id: DateTime.now().toString(),
                      //       name: ref.read(courseStateProvider).name,
                      //       icon: ref.read(courseStateProvider).icon);
                      //   ref.read(courseFormProvider.notifier).create(course);
                      // }
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}

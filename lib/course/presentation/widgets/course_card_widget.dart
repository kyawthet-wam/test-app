import 'package:ant_icons/ant_icons.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:testapp/core/presentation/theming/custom_colors.dart';
import 'package:testapp/core/presentation/theming/custom_theme.dart';
import 'package:testapp/course/domain/course.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({
    Key? key,
    required this.course,
  }) : super(key: key);

  final Course course;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 0,
        color: CustomColors.bgWhite,
        child: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Icon(
                    IconData(int.parse(course.icon),
                        fontFamily: 'MaterialIcons'),
                    size: 50.0,
                    color: CustomColors.darkBlue,
                  ),
                ),
                Text(course.name),
                const SizedBox(
                  height: 16,
                ),
              ]),
        ));
    ;
  }
}
